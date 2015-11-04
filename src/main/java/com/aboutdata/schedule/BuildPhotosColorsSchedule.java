/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule;

import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.domain.Photos;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.schedule.task.BuildIndexTask;
import com.aboutdata.schedule.task.BuildPhotosColorsTask;
import com.aboutdata.service.PhotosColorsService;
import com.aboutdata.service.PhotosService;
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
 *
 * @author Administrator
 */
@Component
public class BuildPhotosColorsSchedule {

    private int pageNow = 0;
    private int pagesize = 24;

    private int totalPages = 2167;

    Logger logger = LoggerFactory.getLogger(BuildPhotosColorsSchedule.class);

    @Resource
    private PhotosService photosService;

    @Resource
    private PhotosColorsService PhotosColorsService;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

    @Scheduled(cron = "*/1 * * * * ?")
    public void execute() {
        logger.info("ActiveCount :" + taskExecutor.getActiveCount());
        if (taskExecutor.getActiveCount() < 70) {
            logger.info("当前页码 {}", pageNow);
            if (pageNow <= totalPages) {
                Pageable pageable = new PageRequest(pageNow, 24);
                Page<PhotosModel> page = photosService.find(pageable);
                for (PhotosModel model : page.getContent()) {
                    taskExecutor.execute(new BuildPhotosColorsTask(model.getId(), PhotosColorsService));
                }
                pageNow++;
            } else {
                logger.info("截取图片颜色结束 {}", pageNow);
            }
        }
    }

}
