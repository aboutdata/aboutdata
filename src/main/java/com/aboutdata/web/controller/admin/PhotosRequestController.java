package com.aboutdata.web.controller.admin;

import javax.annotation.Resource;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aboutdata.domain.Photos;
import com.aboutdata.service.PhotosService;

@Controller("adminPhotosRequestController")
@RequestMapping("/admin/photosRequest")
public class PhotosRequestController {

    @Resource
    private PhotosService photosService;
    /**
     * 列表
     * @param pageable
     * @param model
     * @return 
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(ModelMap model) {
        
    	  Pageable pageable = new PageRequest(1, 25);
          Page<Photos> list = photosService.find(pageable);
          
          model.addAttribute("list", list);
    	
        return "/admin/photos/request/list";
    }
}
