package com.aboutdata.web.controller;

import com.aboutdata.domain.Member;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.security.utils.SecurityUtils;
import com.aboutdata.service.CaptchaService;
import com.aboutdata.service.MemberService;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Controller - 会员登录
 *
 *
 *
 */
@Controller("memberLoginContrller")
@RequestMapping("/login")
public class LoginController {

    @Resource(name = "captchaServiceImpl")
    private CaptchaService captchaService;
    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    /**
     * 登录检测
     */
    @RequestMapping(value = "/check", method = RequestMethod.GET)
    public @ResponseBody
    Boolean check() {
        return memberService.isAuthenticated();
    }

    /**
     * 登录页面
     *
     * @param redirectUrl
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayLogin(String redirectUrl, HttpServletRequest request, ModelMap model) {

        model.addAttribute("redirectUrl", redirectUrl);
        return "/login";
    }

    /**
     * 登录提交
     *
     * @param captcha
     * @param username
     * @param password
     * @param request
     * @param response
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public String submit(String captcha,
            String username,
            String password,
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session,
            Model model) {

//        if (!captchaService.isValid(session.getId(), captcha)) {
//            model.addAttribute("errorMessage", "验证码错误");
//
//            return "/login";
//        }
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
            model.addAttribute("errorMessage", "用户名或者密码不能为空");
            return "/login";
        }
        Member member = memberService.findByUsername(username);

        if (member == null) {
            model.addAttribute("errorMessage", "用户名不存在");
            return "/login";
        }

        System.out.println("member.getIsEnabled() " + member.getIsEnabled());
//        if (!member.getIsEnabled()) {
//            model.addAttribute("errorMessage", "用户名限制登录");
//            return "/login";
//        }
        System.out.println("DigestUtils.md5Hex(password)" + DigestUtils.md5Hex("123456"));

        boolean phraseMatch = SecurityUtils.matchPassphrase(member.getPassword(), member.getSalt(), password);
        if (!phraseMatch) {
            int loginFailureCount = member.getLoginFailureCount() + 1;
            if (loginFailureCount >= 5) {
                member.setIsLocked(true);
                member.setLockedDate(new Date());
            }
            member.setLoginFailureCount(loginFailureCount);
//            memberService.update(member);

            model.addAttribute("errorMessage", "密码错误");
            return "/login";
        }
        member.setLoginIp(request.getRemoteAddr());
        member.setLoginDate(new Date());
        member.setLoginFailureCount(0);
//        memberService.update(member);

        session.setAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME, new Principal(member.getId(), username));

        return "/index";
    }

}
