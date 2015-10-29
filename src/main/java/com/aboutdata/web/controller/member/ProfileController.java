/*
 * 
 * 
 * 
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.enums.Gender;
import com.aboutdata.domain.Member;
import com.aboutdata.service.AreaService;
import com.aboutdata.service.MemberAttributeService;
import com.aboutdata.service.MemberService;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Controller - 会员中心 - 个人资料
 *
 *
 *
 */
@Controller("shopMemberProfileController")
@RequestMapping("/member/profile")
public class ProfileController {

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;
    @Resource(name = "memberAttributeServiceImpl")
    private MemberAttributeService memberAttributeService;
    @Resource(name = "areaServiceImpl")
    private AreaService areaService;

    /**
     * 编辑
     */
    @RequestMapping(method = RequestMethod.GET)
    public String profile(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);
        return "/member/dashboard";
    }

    /**
     * 检查E-mail是否唯一
     */
    @RequestMapping(value = "/check_email", method = RequestMethod.GET)
    public @ResponseBody
    boolean checkEmail(String email) {
        if (StringUtils.isEmpty(email)) {
            return false;
        }
        Member member = memberService.getCurrent();
        if (memberService.emailUnique(member.getEmail(), email)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 编辑
     */
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit(ModelMap model) {
        model.addAttribute("genders", Gender.values());
        model.addAttribute("memberAttributes", memberAttributeService.findList());
        return "shop/member/profile/edit";
    }

    /**
     * 更新
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(String email, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        Member member = memberService.getCurrent();

        member.setEmail(email);
        memberService.update(member);

        return "redirect:/edit";
    }

}
