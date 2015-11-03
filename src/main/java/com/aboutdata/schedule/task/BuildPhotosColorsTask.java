/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule.task;

import com.aboutdata.service.PhotosColorsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 构建图片颜色任务
 *
 * @author Administrator
 */
public class BuildPhotosColorsTask implements Runnable {

    Logger logger = LoggerFactory.getLogger(BuildPhotosColorsTask.class);

    private String photosID;
    private PhotosColorsService photosColorsService;

    public BuildPhotosColorsTask(String photosID, PhotosColorsService photosColorsService) {
        this.photosID = photosID;
        this.photosColorsService = photosColorsService;
    }

    @Override
    public void run() {
        logger.info("photo colors  {}", photosID);
        photosColorsService.generateColors(photosID);
    }
}
