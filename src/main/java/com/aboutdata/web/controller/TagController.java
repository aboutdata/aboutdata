/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.TagModel;
import com.aboutdata.service.TagService;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @Resource
    private TagService tagService;

    /**
     * 标签页面
     *
     * @param name
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayTags(String name, HttpServletRequest request, Model model) {
        Pageable pageable = new PageRequest(1, 50);
        Page<TagModel> pages = tagService.find(pageable);
        model.addAttribute("page", pages);
        return "/portal/tags";
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
        List<String> tags = tagService.findTagStringByName(name);
        return tags;
    }
}
