/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.ResponseMessage;
import com.aboutdata.domain.Collections;
import com.aboutdata.domain.Member;
import com.aboutdata.service.CollectionsService;
import com.aboutdata.service.MemberService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author youyou
 */
@Controller("shopFavoriteController")
@RequestMapping("/member/favorite")
public class FavoriteController {

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource(name = "collectionsServiceImpl")
    private CollectionsService collectionsService;

    /**
     * 会员收藏列表
     *
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displaFavorite(ModelMap model) {
        Member member = memberService.getCurrent();
        List<Collections> collections = collectionsService.findByMember(member.getId());

        model.addAttribute("collections", collections);
        return "/member/favorite/single";
    }

    /**
     * 创建一个新收藏夹
     *
     * @param name
     * @param isPrivate
     * @return
     */
    @RequestMapping(value = "/collections/new", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage create(String name, boolean isPrivate) {
        Member member = memberService.getCurrent();

        Collections collections = new Collections();
        collections.setName(name);
        collections.setIsDefault(isPrivate);
        collections.setMember(member);

        collectionsService.create(collections);

        return ResponseMessage.success("创建收藏夹成功");
    }

}
