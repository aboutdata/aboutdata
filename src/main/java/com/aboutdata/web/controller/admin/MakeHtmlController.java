/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.application.ApplicationBean;
import com.aboutdata.domain.Photos;
import com.aboutdata.service.MakeHtmlService;
import com.aboutdata.service.PhotosService;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/admin/common")
public class MakeHtmlController {

    private static final Logger logger = LoggerFactory.getLogger(MakeHtmlController.class);

    @Resource
    private MakeHtmlService makeHtmlService;

    @Resource
    private PhotosService photosService;

    @RequestMapping(value = "/build", method = RequestMethod.GET)
    public void buildTest() {

        String template = "portal/wallpaper.html";
        Photos photos = photosService.get("0001e1a5-2ad4-40cc-9ff5-202256d82cc3");
//        logger.info("buildTest ########## {} ", photos);
        Map<String, Object> root = new HashMap<String, Object>();

        root.put("photos", photos);
 
        makeHtmlService.build(template, photos.getId() + ".html", root);
    }
}
