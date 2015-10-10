/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.application.InjectLogger;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.MemberInfomation;
import com.aboutdata.service.AreaService;
import com.aboutdata.service.MemberAttributeService;
import com.aboutdata.service.MemberInfomationService;
import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aboutdata.security.utils.SecurityPasswordUtils;
import org.slf4j.LoggerFactory;

/**
 *
 * @author youyou
 */
@Controller("shopMemberSettingsController")
@RequestMapping("/member/settings")
public class SettingsController {

    Logger logger = LoggerFactory.getLogger(SettingsController.class);

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private MemberInfomationService memberInfomationService;

    @Resource(name = "memberAttributeServiceImpl")
    private MemberAttributeService memberAttributeService;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;

    /**
     * 个人资料修改该页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String displayEditProfile(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);

        MemberInfomation memberInfomation = memberInfomationService.findByMember(member);
        model.addAttribute("memberInfomation", memberInfomation);

        return "/member/settings/profile";
    }

    /**
     * 个人资料 保存
     *
     * @param description
     * @param backgroundId
     * @param model
     * @return
     */
    @RequestMapping(value = "/profile", method = RequestMethod.POST)
    public String updateProfile(String description, String backgroundId, ModelMap model) {
        Member member = memberService.getCurrent();

        MemberInfomation mInfo = memberInfomationService.findByMember(member);

        if (mInfo == null) {
            mInfo = new MemberInfomation();
        }
        mInfo.setDescription(description);
        mInfo.setBackgroundId(backgroundId);
        mInfo.setMember(member);

        memberInfomationService.create(mInfo);

        model.addAttribute("member", member);

        return "redirect:/member/settings/profile";
    }

    /**
     * 账户修改该页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String displayEditAccount(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);
        return "/member/settings/account";
    }

    @RequestMapping(value = "/account", method = RequestMethod.POST)
    public String updateAccount(String email, String password, String confirmPassword, ModelMap model) {
        Member member = memberService.getCurrent();

        if (!StringUtils.isEmpty(email)) {
            member.setEmail(email);
        }

        if (!StringUtils.isEmpty(password) && StringUtils.endsWith(password, confirmPassword)) {
            member.setPassword(SecurityPasswordUtils.getPassphrase(member.getSalt(), password));
        } else {
            logger.debug("update password({}) not equals comfirmPassword({}) ", password, confirmPassword);
        }

        memberService.update(member);
        model.addAttribute("member", member);

        return "redirect:/member/settings/account";
    }

    /**
     * 账户修改该页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/browsing", method = RequestMethod.GET)
    public String displaEditBrowsing(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);

//        model.addAttribute("browsing", browsing);
        
        return "/member/settings/browsing";
    }

}
