/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 * 壁纸上传
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/member/upload")
public class UploadControler {

    private static final Logger logger = LoggerFactory.getLogger(UploadControler.class);

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private ImageGraphicsService imageGraphicsService;

    /**
     * 上传页面
     *
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayUpload() {

        return "/member/upload/single";
    }

    /**
     * 上传处理
     *
     * @param multipartFile
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.POST)
    public String wallpaper(MultipartFile multipartFile, ModelMap model) {
        logger.info("file name {}", multipartFile.getOriginalFilename());
        logger.info("file name {}", multipartFile.getName());

        Member m = new Member();
        m.setId("1");

        Photos photos = new Photos();

        PhotosAlbum album = new PhotosAlbum();
        album.setId("ff8081814f7e13d8014f7e18a95a0000");
        photos.setMember(m);
        photos.setAlbum(album);
        photos.setOrder(1);
        photos.setTitle(multipartFile.getOriginalFilename());

        //该方法会处理图片并保存 图片信息
        imageGraphicsService.build(photos, multipartFile);

        return "/member/upload/result";
    }
}
