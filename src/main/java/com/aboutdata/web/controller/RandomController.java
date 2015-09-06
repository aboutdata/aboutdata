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
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/random")
public class RandomController {
    
    Logger logger = LoggerFactory.getLogger(RandomController.class);
    
    @Resource
    private PhotosService photosService;
    
    @RequestMapping
    public String list(int page,HttpServletRequest request,Model model) {
        logger.info("page: {}", page);
        Pageable pageable = new PageRequest(page, 10);
        
        Page<Photos> pages = photosService.findTop50(pageable);
        
        model.addAttribute("list", pages.getContent());
        return "/portal/random/single";
    }
    
}
