/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author youyou
 */
@Controller
@RequestMapping("/")
public class IndexController {

    /**
     * 登录检测
     */
    @RequestMapping("/index")
    public String displayIndex() {
        
        return "/index";
    }
}
