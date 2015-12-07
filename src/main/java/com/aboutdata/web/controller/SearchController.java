/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.model.PhotosModel;
import com.aboutdata.service.SearchService;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 这里page 不是查询数据库 不能改成0
 *
 * @author youyou
 */
@Controller
@RequestMapping("/search")
public class SearchController {

    Logger logger = LoggerFactory.getLogger(SearchController.class);

    @Resource
    private SearchService searchService;

    @RequestMapping(method = RequestMethod.GET)
    public String displaySearch(String keywords, Model model) {
        if (StringUtils.isEmpty(keywords)) {
            //如果没有参数 就所搜索框的页面
            return "/portal/search/single";
        }
        Pageable pageable = new PageRequest(1, 24);
        Page<PhotosModel> pages = searchService.search(keywords, pageable);
        model.addAttribute("pages", pages);
        model.addAttribute("keywords", keywords);
        return "/portal/search/result";
    }

    /**
     * 查看更多
     *
     * @param page
     * @param keywords
     * @param model
     * @return
     */
    @ResponseBody//作用是将返回的对象作为响应，发送给页面
    @RequestMapping("/next")
    public ModelAndView infinitescroll(int page, String keywords, ModelAndView model) {
        logger.info("page now {}", page);
        Pageable pageable = new PageRequest(page, 24);
        Page<PhotosModel> pages = searchService.search(keywords, pageable);
        logger.info("page size {}", pages.getContent().size());
        model.setViewName("/portal/search/next");
        model.addObject("pages", pages);
        model.addObject("page", page);
        return model;
    }

}
