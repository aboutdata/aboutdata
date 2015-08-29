/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.domain.Member;
import com.aboutdata.service.TagService;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
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
