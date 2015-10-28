/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.model.PhotosModel;
import com.aboutdata.service.PhotosService;
import java.util.List;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(method = RequestMethod.GET)
    public String displayIndex(Model model) {

        Sort sort = new Sort(Sort.Direction.DESC, "order");
        Pageable pageable = new PageRequest(0, 24, sort);
        Page<PhotosModel> pages = photosService.find(pageable);

        List<PhotosModel> content = pages.getContent();

        List<PhotosModel> three = content.subList(0, 3);

        List<PhotosModel> four = content.subList(3, 7);

        List<PhotosModel> five = content.subList(7, 13);

        model.addAttribute("three", three);
        model.addAttribute("four", four);
        
        model.addAttribute("content", content);

        //model.addAttribute("list", list.getContent());
        return "/index";
    }
}
