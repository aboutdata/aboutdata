/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.PhotosColors;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.TagModel;
import com.aboutdata.service.PhotosAlbumService;
import com.aboutdata.service.PhotosColorsService;
import com.aboutdata.service.PhotosService;
import java.util.List;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller("wallpaperController")
@RequestMapping("/wallpaper")
public class WallpaperController {

    Logger logger = LoggerFactory.getLogger(WallpaperController.class);

    @Resource
    private PhotosService photosService;

    @Resource
    private PhotosColorsService photosColorsService;

    @Resource
    private PhotosAlbumService photosAlbumService;

    @RequestMapping(value = "/{photosId}", method = RequestMethod.GET)
    public String wallpaper(@PathVariable("photosId") String photosId, ModelMap model) {
        PhotosModel photos = photosService.views(photosId);
        String tagString = "";
        if (photos.getTags() != null) {
            for (TagModel tag : photos.getTags()) {
                tagString += tag.getName() + ",";
            }
            tagString = tagString.substring(0, tagString.length());
        }
        //壁纸的主要颜色
        List<PhotosColors> colors = photosColorsService.findByPhotosId(photosId);
        
        model.addAttribute("photos", photos);
        model.addAttribute("tagString", tagString);
        model.addAttribute("colors", colors);

        return "/portal/wallpaper";

    }
}
