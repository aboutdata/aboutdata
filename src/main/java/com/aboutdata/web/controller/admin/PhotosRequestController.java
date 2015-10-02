package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.domain.Admin;
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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("adminPhotosRequestController")
@RequestMapping("/admin/photosRequest")
public class PhotosRequestController {

    Logger logger = LoggerFactory.getLogger(getClass());
    
    @Resource
    private PhotosService photosService;

    /**
     * 列表
     *
     * @param pageable
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(ModelMap model) {

        return "/admin/photos/request/list";
    }

    /**
     * datatables 分页查询 条件查询
     *
     * @param iDisplayLength
     * @param iDisplayStart
     * @param sColName
     * @param sSortDir_0
     * @param sSearch
     * @param sEcho
     * @return
     */
    @RequestMapping(value = "/getDatatables")
    @ResponseBody
    public TableData getByDatatables(int iDisplayLength,
            int iDisplayStart,
            String sColName,
            String sSortDir_0,
            String sSearch,
            int sEcho) {
        Pageable pageable = new PageRequest(0, 1);
        Page<Photos> list = photosService.find(pageable);
        
        return new TableData<Photos>(list, sEcho, false);
    }
}
