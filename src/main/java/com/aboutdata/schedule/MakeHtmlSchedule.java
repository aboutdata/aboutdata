/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule;

import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.schedule.task.MakeHtmlTask;
import com.aboutdata.service.MakeHtmlService;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Component;

/**
 * 页面静态化
 * @author Administrator
 */
@Component
public class MakeHtmlSchedule {

    Logger logger = LoggerFactory.getLogger(MakeHtmlSchedule.class);

    private int page = 0;
    private final int pagesize = 500;

    @Resource
    private PhotosDao photosDao;

    @Resource
    private MakeHtmlService makeHtmlService;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

    @Scheduled(cron = "*/1 * * * * ?")
    public void execute() {
        logger.info("page: {} " + page);
        logger.info("ActiveCount :" + taskExecutor.getActiveCount());

        if (taskExecutor.getActiveCount() < 50) {
            Pageable pageable = new PageRequest(page, pagesize);
            Page<Photos> pages = photosDao.findAll(pageable);
            logger.info("make html end getTotalPages {}", pages.getTotalPages());
            if (page <= pages.getTotalPages()) {
                for (Photos photo : pages.getContent()) {
                    taskExecutor.execute(new MakeHtmlTask(photo, makeHtmlService));
                }
                page++;
            } else {
                logger.info("make html end page {}", page);
            }
        }
    }

}
