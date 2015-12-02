/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.PhotosRequest;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.PhotosRequestService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.utils.EasyImage;
import java.io.File;
import java.io.IOException;
import javax.annotation.Resource;
import org.apache.commons.lang3.RandomStringUtils;
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
    private PhotosRequestService photosRequestService;

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
    public String upload(MultipartFile multipartFile, ModelMap model) {

        Member member = memberService.getCurrent();
        PhotosRequest request = new PhotosRequest();

        //getContentType()  = jpeg/image  png/image
        String type = multipartFile.getContentType().split("/")[1];
        
        String path = "/tmp/" + multipartFile.getName() + "_" + RandomStringUtils.randomNumeric(6) + "." + type;
        File destFile = new File(path);
        try {
            multipartFile.transferTo(destFile);
        } catch (IOException | IllegalStateException ex) {
            ex.printStackTrace();
        }
        //获取图片的宽高和大小(size)
        EasyImage easyImage = new EasyImage(path);

        request.setOrder(1);
        request.setMember(member);
        request.setWidth(easyImage.getWidth());
        request.setHeight(easyImage.getHeight());
        request.setSize(multipartFile.getSize());
        request.setTitle(multipartFile.getOriginalFilename());
        request.setSource(path);
//        request.setDescription("该方法会处理图片并保存 图片信息 setDescription");
        photosRequestService.create(request);

        return "/member/upload/result";
    }
}
