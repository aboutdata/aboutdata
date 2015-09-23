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
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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

        Pageable pageable = new PageRequest(1, 25);

         Page<Photos> list = photosService.find(pageable);

          model.addAttribute("list", list);
        return "/index";
    }

    /**
     * 查看更多
     *
     * @param page
     * @param model
     * @return
     */
    @ResponseBody//作用是将返回的对象作为响应，发送给页面
    @RequestMapping("index/next")
    public ModelAndView displayIndexNext(int page,ModelAndView model) {
    	logger.info("page now {}",page);
        Pageable pageable = new PageRequest(0, 25);

        Page<Photos> pages = photosService.find(pageable);
        logger.info("page size {}",pages.getContent().size());
	    model.setViewName("/portal/home/next");
        model.addObject("pages", pages);
        return model;
    }

}
