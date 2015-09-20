/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.ResponseMessage;
import com.aboutdata.commons.enums.ResponseMessageType;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.Tag;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.PhotosAlbumService;
import com.aboutdata.service.PhotosService;
import java.util.List;
import java.util.Random;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author youyou
 */
@Controller("photosController")
@RequestMapping("/member/photos")
public class PhotosController {

    Logger logger = LoggerFactory.getLogger(PhotosController.class);

    @Resource
    private PhotosService photosService;

    @Resource
    private PhotosAlbumService photosAlbumService;

    @Resource
    private ImageGraphicsService imageGraphicsService;
    @RequestMapping(method = RequestMethod.GET)

    public String index(Integer pageNumber, ModelMap model) {

        List<PhotosAlbum> albums = photosAlbumService.findRoots();
        model.addAttribute("albums", albums);
        return "/member/photos/album";
    }

    @RequestMapping(value = "/wallpaper/{photosId}", method = RequestMethod.GET)
    public String wallpaper(@PathVariable("photosId") String photosId, ModelMap model) {
        Photos photos = photosService.findById(photosId);

        String tagString = "";
        if (photos != null) {
            for (Tag tag : photos.getTags()) {
                tagString += tag.getName() + ",";
            }
            tagString = tagString.substring(0, tagString.length());
        }

        model.addAttribute("photos", photos);

        model.addAttribute("tagString", tagString);

        return "/member/photos/wallpaper";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String wallpaper(String albumId, MultipartFile multipartFile, ModelMap model, RedirectAttributes rattr) {
        logger.info("file name {}", multipartFile.getOriginalFilename());
        logger.info("file name {}", multipartFile.getName());

        Member m = new Member();
        m.setId("1");

        Photos photos = new Photos();

        PhotosAlbum album = new PhotosAlbum();
        album.setId(albumId);
        photos.setMember(m);
        photos.setAlbum(album);
        photos.setOrder(1);
        photos.setTitle(multipartFile.getOriginalFilename());

        //该方法会处理图片并保存 图片信息
        imageGraphicsService.build(photos, multipartFile);

        if (!albumId.isEmpty()) {
            return "redirect:/member/photos/album/" + albumId;
        } else {
            return "redirect:/member/photos/album";
        }
    }

    @RequestMapping(value = "/addTags", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage addTags(String id, String tags, ModelMap model, RedirectAttributes rattr) {
        photosService.addTags(id, tags);

        return ResponseMessage.success("添加标签成功");
    }

}
