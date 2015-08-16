/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author youyou
 */
@Controller
@RequestMapping("/admin")
public class DashboardController {

    @RequestMapping("/dashboard")
    public String displayDashboard() {

        return "/admin/dashboard";
    }

    @RequestMapping("/welcome")
    public String displayWelcome() {

        return "/admin/welcome";
    }

}
