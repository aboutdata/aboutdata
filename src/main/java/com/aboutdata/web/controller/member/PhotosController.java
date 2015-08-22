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
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author youyou
 */
@Controller("photosController")
@RequestMapping("/phtots")
public class PhotosController {

    @Resource
    private PhotosService photosService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Integer pageNumber, ModelMap model) {

//        List<PhotosAlbum> albums = photosAlbumService.findRoots();
//        model.addAttribute("albums", albums);
        return "/member/photos/album";
    }

    @RequestMapping(value = "/wallpaper/{photosId}", method = RequestMethod.GET)
    public String wallpaper(@PathVariable("photosId") long photosId, ModelMap model) {
        Photos photos = photosService.findById(photosId);

        model.addAttribute("photos", photos);

        return "/member/photos/wallpaper";
    }

}
