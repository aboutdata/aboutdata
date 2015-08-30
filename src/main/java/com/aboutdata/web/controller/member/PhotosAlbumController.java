/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.ResponseMessage;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.PhotosAlbumService;
import com.aboutdata.service.PhotosService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author youyou
 */
@Controller("photosAlbumController")
@RequestMapping("/member/photos/album")
public class PhotosAlbumController {

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private PhotosAlbumService photosAlbumService;

    @Resource
    private PhotosService photosService;

    /**
     * 首页
     *
     * @param pageNumber
     * @param model
     */
    @RequestMapping(method = RequestMethod.GET)
    public String index(Integer pageNumber, ModelMap model) {

        Member member = memberService.getCurrent();

        List<PhotosAlbum> albums = photosAlbumService.findRootsByMember(member.getId());
        model.addAttribute("albums", albums);

        return "/member/photos/album";
    }

    /**
     * 首页
     *
     * @param albumId
     * @param model
     * @return
     */
    @RequestMapping(value = "/{albumId}", method = RequestMethod.GET)
    public String gallery(@PathVariable("albumId") String albumId, ModelMap model) {

        Member member = memberService.getCurrent();

        List<Photos> photos = photosService.findByAlbumId(albumId);

        PhotosAlbum photosAlbum = photosAlbumService.findById(albumId);

        model.addAttribute("list", photos);
        model.addAttribute("photosAlbum", photosAlbum);

        return "/member/photos/list";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage createPhotosAlbum(String albumName, ModelMap model) {

        Member member = memberService.getCurrent();
//      Member member = new Member();
//      member.setId("1");
        PhotosAlbum album = new PhotosAlbum();
        album.setName(albumName);
        album.setGrade(1);
        album.setMember(member);
        photosAlbumService.create(album);

//        if (album.getParentId() != null) {
//            return "redirect:/gallery/album/" + album.getParentId();
//        } else {
//            return "redirect:/gallery";
//        }
        return ResponseMessage.success("添加成功");
    }

}
