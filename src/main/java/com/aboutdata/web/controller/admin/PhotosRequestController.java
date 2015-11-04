package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.commons.enums.PhotoStatus;
import javax.annotation.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.service.PhotosColorsService;
import com.aboutdata.service.PhotosService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller("adminPhotosRequestController")
@RequestMapping("/admin/photosRequest")
public class PhotosRequestController {
    
    Logger logger = LoggerFactory.getLogger(getClass());
    
    @Resource
    private PhotosService photosService;
    
    @Resource
    private PhotosColorsService photosColorsService;

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
    public TableData<PhotosModel> getByDatatables(int iDisplayLength,
            int iDisplayStart,
            String sColName,
            String sSortDir_0,
            String sSearch,
            int sEcho) {
        Pageable pageable = new PageRequest(iDisplayStart, iDisplayLength);
        
        Page<PhotosModel> list = photosService.findByStatus(PhotoStatus.UNASSIGNED, pageable);
        
        return new TableData(list, sEcho, false);
    }

    /**
     * 查看申请
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/single/{id}", method = RequestMethod.GET)
    public String single(@PathVariable("id") String id, ModelMap model) {
        PhotosModel photos = photosService.findById(id);
        model.addAttribute("photos", photos);
        logger.info(id);
        return "/admin/photos/request/single";
    }

    /**
     * 审核通过
     *
     * @param id
     * @param comment
     * @param model
     * @return
     */
    @RequestMapping(value = "/approve/{id}", method = RequestMethod.POST)
    public String approve(@PathVariable("id") String id, String comment, ModelMap model) {
        
        photosService.makrStatus(id, PhotoStatus.APPROVED);
        //再批准通过 同时截取图片颜色
        photosColorsService.generateColors(id);
        
        PhotosModel photos = photosService.findById(id);
        model.addAttribute("photos", photos);
        logger.info("comment", comment);
        return "/admin/photos/request/single";
    }

    /**
     * 拒绝 拒绝原因暂时没写 20151009
     *
     * @param id
     * @param comment
     * @param model
     * @return
     */
    @RequestMapping(value = "/reject/{id}", method = RequestMethod.POST)
    public String reject(@PathVariable("id") String id, String comment, ModelMap model) {
        
        photosService.makrStatus(id, PhotoStatus.REJECTED);
        PhotosModel photos = photosService.findById(id);
        model.addAttribute("photos", photos);
        logger.info("comment", comment);
        return "/admin/photos/request/single";
    }
    
}
