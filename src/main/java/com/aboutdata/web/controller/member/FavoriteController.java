/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author youyou
 */
@Controller("shopFavoriteController")
@RequestMapping("/member/favorite")
public class FavoriteController {

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @RequestMapping(method = RequestMethod.GET)
    public String displaFavorite(ModelMap model) {
        Member member = memberService.getCurrent();
        model.addAttribute("member", member);

//        model.addAttribute("browsing", browsing);
        return "/member/favorite/single";
    }
}
