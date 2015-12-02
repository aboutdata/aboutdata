/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.commons.ResponseMessage;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.SafeKey;
import com.aboutdata.security.utils.SecurityPasswordUtils;
import com.aboutdata.service.CaptchaService;
import com.aboutdata.service.EmailService;
import com.aboutdata.service.MemberService;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.joda.time.LocalDateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @ Controller - 密码
 * @ author Administrator
 */
@Controller("shopPasswordController")
@RequestMapping("/password")
public class PasswordController {

    Logger logger = LoggerFactory.getLogger(PasswordController.class);

    @Resource(name = "captchaServiceImpl")
    private CaptchaService captchaService;
    @Resource(name = "memberServiceImpl")
    private MemberService memberService;
    @Resource(name = "emailServiceImpl")
    private EmailService emailService;

    /**
     * 忘记密码
     *
     * @return
     */
    @RequestMapping(value = "/forget", method = RequestMethod.GET)
    public String displayRecover() {
        return "/portal/password/forget";
    }

    /**
     * 找回密码提交
     *
     * @param email
     * @return
     */
    @RequestMapping(value = "/recover", method = RequestMethod.POST)
    public String recover(String email) {
        logger.info("#############");
        memberService.recoverPassword(email);
        return "/portal/password/forget";
    }

    /**
     * 重置密码链接
     *
     * @param username
     * @param key
     * @param model
     * @return
     */
    @RequestMapping(value = "/reset", method = RequestMethod.GET)
    public String displayReset(String username, String key, Model model) {
        Member member = memberService.findByUsername(username);
        if (member == null) {
            logger.info("用户信息不存在");
            return "/portal/password/forget";
        }
        List<SafeKey> safeKeys = memberService.getSafeKey(member.getId());

        /**
         * 用户可能多次发送重置信息 只有要一次匹配上即可
         */
        Boolean keyIsMacth = false;
        for (SafeKey safeKey : safeKeys) {
            logger.info("key {}" + safeKey.getValue());
            logger.info("mykey {}" + key);
            if (safeKey.getValue() != null || safeKey.getValue().equals(key)) {
                //如果密钥正确 判断是都过期
                if (!safeKey.hasExpired()) {
                    logger.info("安全密钥已过期");
                    keyIsMacth = true;
                    break;
                }
            }
        }
        if (!keyIsMacth) {
            //没有发送过重置链接 或者重置链接不正确
            logger.info("没有发送过重置链接 或者重置链接不正确");
            return "/portal/password/forget";
        }

        model.addAttribute("member", member);
        model.addAttribute("key", key);
        return "/portal/password/reset";

    }

    /**
     * 重置密码提交
     *
     * @param username
     * @param password
     * @param repassword
     * @param key
     * @return
     */
    @RequestMapping(value = "reset", method = RequestMethod.POST)
    public String reset(String username, String password, String repassword, String key) {
        if (password == null || !password.equals(repassword)) {
            logger.info("密码不匹配");
            return "/portal/password/forget";
        }

        Member member = memberService.findByUsername(username);
        if (member == null) {
            logger.info("用户信息不存在");
            return "/portal/password/forget";
        }
        /**
         * @ 用户可能多次发送重置信息
         * @ 后期修改内容 可以根据safekey id的 来判断 这样就不会循环多次了
         */
        List<SafeKey> safeKeys = memberService.getSafeKey(member.getId());

        Boolean keyIsMacth = false;
        for (SafeKey safeKey : safeKeys) {
            logger.info("key {}" + safeKey.getValue());
            logger.info("mykey {}" + key);
            if (safeKey.getValue() != null || safeKey.getValue().equals(key)) {
                //如果密钥正确 判断是否过期
                if (!safeKey.hasExpired()) {
                    keyIsMacth = true;
                    break;
                }
            }
        }
        if (!keyIsMacth) {
            //没有发送过重置链接 或者重置链接不正确 或者 key已过期
            logger.info("没有发送过重置链接 或者重置链接不正确 或者 key已过期");
            return "/portal/password/forget";
        }
        String salt = member.getSalt();
        String passphrase = SecurityPasswordUtils.getPassphrase(salt, password);
        member.setPassword(passphrase);
        memberService.update(member);
        memberService.expireSafekey(member.getId());

        return "redirect:/login";
    }
}
