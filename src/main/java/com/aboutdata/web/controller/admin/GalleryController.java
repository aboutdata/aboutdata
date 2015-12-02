/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.admin;

import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.service.ImageGraphicsService;
import java.io.File;
import java.io.OutputStream;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/admin/gallery")
public class GalleryController {

    protected final Logger log = LoggerFactory.getLogger(GalleryController.class);

    @Resource
    private PhotosDao photosDao;

    @Resource
    private ImageGraphicsService imageGraphicsService;

    /**
     * *
     * 后台审核阅览
     *
     * @param id
     * @param reuest
     * @param response
     * @param output
     */
    @RequestMapping(value = "/{id}/thumb")
    public void viewThumbnail(@PathVariable("id") String id,
            HttpServletRequest reuest,
            HttpServletResponse response, OutputStream output) {

        Photos photos = photosDao.findOne(id);
        if (photos != null) {
            try {
                File source = new File(photos.getSource());
                byte[] data = imageGraphicsService.scale(FileUtils.readFileToByteArray(source), 300, 200);

                response.setContentLength(data.length);
                output.write(data);
            } catch (Exception e) {
                log.error("Had an error getting the thumbnail {}", e);
            }
        } else {
            log.error("Could not respond with a 500 error");
        }
    }
}
