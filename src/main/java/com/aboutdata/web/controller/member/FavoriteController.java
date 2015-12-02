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
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    
    Logger logger = LoggerFactory.getLogger(FavoriteController.class);
    
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
        Collections collections = collectionsService.findDefaultByMember(member.getId());
        
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

    /**
     * 添加到收藏夹
     *
     * @param photosId
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage add(String photosId) {
        Member member = memberService.getCurrent();
        Collections collections = collectionsService.findDefaultByMember(member.getId());
        if (collections == null) {
            logger.info("默认收藏 会员ID {}", member.getId());
            //默认收藏
            collections = new Collections();
            collections.setIsDefault(Boolean.TRUE);
            collections.setName("默认收藏夹");
            collections.setMember(member);
            collectionsService.create(collections);
        }
        collections = collectionsService.findDefaultByMember(member.getId());
        collectionsService.addFavorite(photosId, collections.getId());
        return ResponseMessage.success("添加到收藏夹");
    }
    
}
