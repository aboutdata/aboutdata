/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule.task;

import com.aboutdata.domain.Photos;
import com.aboutdata.service.MakeHtmlService;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author Administrator
 */
public class MakeHtmlTask implements Runnable {

    Logger logger = LoggerFactory.getLogger(MakeHtmlTask.class);

    private final Photos photo;
    private final MakeHtmlService makeHtmlService;

    public MakeHtmlTask(Photos photo, MakeHtmlService makeHtmlService) {
        this.photo = photo;
        this.makeHtmlService = makeHtmlService;
    }

    @Override
    public void run() {
        String template = "index.html";

        Map<String, Object> root = new HashMap<>();
        root.put("photo", photo);
        
        makeHtmlService.build(template,photo.getId()+ ".html", root);

    }

}
