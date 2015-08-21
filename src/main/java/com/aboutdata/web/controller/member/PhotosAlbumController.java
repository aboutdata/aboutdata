/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.PhotosAlbumService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author youyou
 */
@Controller("photosAlbumController")
@RequestMapping("/phtotsAlbum")
public class PhotosAlbumController {

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private PhotosAlbumService photosAlbumService;

    /**
     * 首页
     *
     * @param pageNumber
     * @param model
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Integer pageNumber, ModelMap model) {

        Member member = memberService.getCurrent();

        List<PhotosAlbum> albums = photosAlbumService.findRoots();
        model.addAttribute("albums", albums);

        return "/member/photos/album";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createPhotosAlbum(Integer pageNumber, ModelMap model) {

        Member member = memberService.getCurrent();
        PhotosAlbum album = new PhotosAlbum();
        album.setName("测试相册一");

        photosAlbumService.create(album);
        
        if (album.getParentId() != null) {
            return "redirect:/gallery/album/" + album.getParentId();
        } else {
            return "redirect:/gallery";
        }
        
    }

}
