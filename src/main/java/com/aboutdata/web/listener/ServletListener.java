/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.listener;

import com.aboutdata.commons.application.ApplicationBean;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
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
        sc.setAttribute("appBean", appBean);
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
