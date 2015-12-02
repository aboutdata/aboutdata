/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.TagModel;
import com.aboutdata.service.SearchService;
import com.aboutdata.service.TagService;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author youyou
 */
@Controller("tagController")
@RequestMapping(value = "/tags")
public class TagController {

    Logger logger = LoggerFactory.getLogger(TagController.class);
    @Resource
    private TagService tagService;

    @Resource
    private SearchService searchService;

    /**
     * 标签页面
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayTags(HttpServletRequest request, Model model) {
        Pageable pageable = new PageRequest(0, 300);
        Page<TagModel> pages = tagService.find(pageable);
        model.addAttribute("pages", pages);
        return "/portal/tags";
    }

    /**
     * 标签分页
     *
     * @param page
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/page/{page}", method = RequestMethod.GET)
    public String list(@PathVariable("page") int page, HttpServletRequest request, Model model) {
        if (page > 0) {
            Pageable pageable = new PageRequest(page, 300);
            Page<TagModel> pages = tagService.find(pageable);
            model.addAttribute("pages", pages);
            return "/portal/tags";
        } else {
            logger.error("{} page is not correct ", page);
            Pageable pageable = new PageRequest(0, 300);
            Page<TagModel> pages = tagService.find(pageable);
            model.addAttribute("pages", pages);
            return "/portal/tags";
        }
    }
    /**
     * 点击标签后 搜索给标签图片
     * @param tagName
     * @param model
     * @return 
     */
    @RequestMapping(value = "/s/{tagName}", method = RequestMethod.GET)
    public String search(@PathVariable("tagName") String tagName, Model model) {
        Pageable pageable = new PageRequest(1, 24);
        Page<PhotosModel> pages = searchService.search(tagName, pageable);
        model.addAttribute("pages", pages);
        model.addAttribute("keywords", tagName);
        return "/portal/search/result";
    }

    /**
     *
     * @param name
     * @param request
     * @param response
     * @param session
     * @return
     */
    @RequestMapping(value = "/source", method = RequestMethod.GET)
    @ResponseBody
    public List<String> execute(String name, HttpServletRequest request, HttpServletResponse response, HttpSession session) {

        return tagService.findTagStringByName(name);
    }
}
