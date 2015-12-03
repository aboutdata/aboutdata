/*
 * 
 * 
 * 
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Controller - 会员中心 - 密码
 *
 *
 *
 */
@Controller
@RequestMapping("/member/password")
public class PasswordController {

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    /**
     * 验证当前密码
     *
     * @param currentPassword
     * @return
     */
    @RequestMapping(value = "/check_current_password", method = RequestMethod.GET)
    public @ResponseBody
    boolean checkCurrentPassword(String currentPassword) {
        if (StringUtils.isEmpty(currentPassword)) {
            return false;
        }
        Member member = memberService.getCurrent();
        if (StringUtils.equals(DigestUtils.md5Hex(currentPassword), member.getPassword())) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 编辑
     */
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String edit() {
        return "shop/member/password/edit";
    }

    /**
     * 更新
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(String currentPassword, String password, HttpServletRequest request, RedirectAttributes redirectAttributes) {

        return "redirect:edit.jhtml";
    }

}
