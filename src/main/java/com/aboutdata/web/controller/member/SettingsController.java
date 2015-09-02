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
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author youyou
 */
@Controller("shopMemberSettingsController")
@RequestMapping("/member/settings")
public class SettingsController {

    @InjectLogger
    private Logger logger;

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private MemberInfomationService memberInfomationService;

    @Resource(name = "memberAttributeServiceImpl")
    private MemberAttributeService memberAttributeService;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String displayEditProfile(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);

        return "/member/settings/profile";
    }

    @RequestMapping(value = "/account", method = RequestMethod.GET)
    public String displayEditAccount(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);
        return "/member/settings/account";
    }

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

        return "/member/settings/profile";
    }
}
