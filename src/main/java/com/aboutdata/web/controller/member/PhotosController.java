/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.PhotosService;
import java.util.List;
import java.util.Random;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author youyou
 */
@Controller("photosController")
@RequestMapping("/phtots")
public class PhotosController {

    Logger logger = LoggerFactory.getLogger(PhotosController.class);

    @Resource
    private PhotosService photosService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Integer pageNumber, ModelMap model) {

//        List<PhotosAlbum> albums = photosAlbumService.findRoots();
//        model.addAttribute("albums", albums);
        return "/member/photos/album";
    }

    @RequestMapping(value = "/wallpaper/{photosId}", method = RequestMethod.GET)
    public String wallpaper(@PathVariable("photosId") String photosId, ModelMap model) {
        Photos photos = photosService.findById(photosId);

        model.addAttribute("photos", photos);

        return "/member/photos/wallpaper";
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String wallpaper(String albumId, MultipartFile file, ModelMap model, RedirectAttributes rattr) {
        logger.info("file name {}", file.getOriginalFilename());
        logger.info("file name {}", file.getName());

        Random r1 = new Random();
        int num = r1.nextInt(19) + 1;

        String thumbnail = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/thumbs/thumb" + num + ".jpg";
        String medium = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/images/image" + num + ".jpg";

        Photos photos = new Photos();

        photos.setAlbumId(albumId);
        photos.setOrder(1);
        photos.setTitle(file.getOriginalFilename());
        photos.setThumbnail(thumbnail);
        photos.setMedium(medium);

        photosService.create(photos);

        if (!albumId.isEmpty()) {
            return "redirect:/phtots/album/" + albumId;
        } else {
            return "redirect:/phtots/album";
        }
    }

}
