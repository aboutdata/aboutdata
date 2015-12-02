/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.listener;

import com.aboutdata.commons.application.ApplicationBean;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.InputStream;
import javax.json.Json;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;

/**
 *
 * @author youyou
 */
@WebListener
public class ServletListener extends ContextLoaderListener implements HttpSessionListener {

    Logger logger = LoggerFactory.getLogger(ServletListener.class);
    private WebApplicationContext springContext;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext sc = sce.getServletContext();
        //获取spring上下文
        springContext = getCurrentWebApplicationContext();
        ApplicationBean appBean = (ApplicationBean) springContext.getBean("appBean");
        
        //设置version 从grunt打包到生产使用
        try (InputStream is = sc.getResourceAsStream("/package.json")) {
            ObjectMapper mapper = new ObjectMapper();
            String version = mapper.readTree(is).path("version").asText();
            appBean.setGruntVersion(version);
            logger.info("packeage.json version is {}", version);
        } catch (IOException ex) {
            //生产环境 打包部署需要
            logger.error("packeage.json is not exist {}", ex);
        }
        
        sc.setAttribute("appBean", appBean);
        logger.info("config {}", appBean.getSystemConfig());

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
    }
}
