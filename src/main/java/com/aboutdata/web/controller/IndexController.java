/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.domain.Photos;
import com.aboutdata.service.PhotosService;
import java.util.List;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author youyou
 */
@Controller
@RequestMapping("/")
public class IndexController {

    Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Resource
    private PhotosService photosService;

    @RequestMapping("/index")
    public String displayIndex(Model model) {

        List<Photos> top50 = photosService.findTop50();

        List<Photos> top10 = photosService.findTop10();

        logger.info("top50 {}", top50.size());
        model.addAttribute("top50", top50);
        model.addAttribute("top10", top10);
        return "/index";
    }
}
