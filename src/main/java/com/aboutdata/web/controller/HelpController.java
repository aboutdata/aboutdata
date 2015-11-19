/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller("helpController")
@RequestMapping(value = "/help")
public class HelpController {

    /**
     * 显示帮助首页
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String displayHelp(HttpServletRequest request, Model model) {
        return "/portal/help/index";
    }

    /**
     * 规则
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/rules", method = RequestMethod.GET)
    public String displayRules(HttpServletRequest request, Model model) {
        return "/portal/help/rules";
    }

    /**
     * 联系方式
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String displayContact(HttpServletRequest request, Model model) {
        return "/portal/help/contact";
    }

    /**
     * 团队
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/team", method = RequestMethod.GET)
    public String displayTeam(HttpServletRequest request, Model model) {
        return "/portal/help/team";
    }

    /**
     * 加入我们
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String displayJoin(HttpServletRequest request, Model model) {
        return "/portal/help/join";
    }
    
    /**
     * 更新日志页面
     *
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value = "/changelog", method = RequestMethod.GET)
    public String displayChangelog(HttpServletRequest request, Model model) {
        return "/portal/help/changelog";
    }

}
