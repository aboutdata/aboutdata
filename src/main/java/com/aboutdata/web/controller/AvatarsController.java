/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @1 用户处理各种不同尺寸的头像
 * @2 使用nginx 代理到tomcat
 * @3 为什么不存fastdfs 文件名字是随机生成的，可以采取存储到mysql来解决？
 * @author Administrator
 */
@Controller("shopAvatarsController")
@RequestMapping("/avatars")
public class AvatarsController {
    
    Logger logger = LoggerFactory.getLogger(AvatarsController.class);

    /**
     * Get download from file-system
     *
     * @param id
     * @param v 版本号 预留使用必须带上v=1
     * @param s
     * @param response {@link HttpServletResponse}
     */
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public void download(@PathVariable("id") String id, String v, String s, HttpServletResponse response) {
        if (StringUtils.isEmpty(s)) {
            File file = new File("/var/avatars/scarlet.png");
            try {
                FileUtils.copyFile(file, response.getOutputStream());
            } catch (IOException ex) {
                 response.setHeader("message", "改文件不存在或者已被删除");
                response.setStatus(404);
            }
        } else {
            File file = new File("/var/avatars/scarlet-" + s + ".png");
            try {
                FileUtils.copyFile(file, response.getOutputStream());
            } catch (IOException ex) {
              response.setHeader("message", "改文件不存在或者已被删除");
              response.setStatus(404);
            }
        }
        
    }
    
}
