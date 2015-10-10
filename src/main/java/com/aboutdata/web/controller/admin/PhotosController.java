package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.service.PhotosService;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 图片
 *
 * @author Administrator
 */
@Controller("adminPhotosController")
@RequestMapping("/admin/photos")
public class PhotosController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private PhotosService photosService;

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(ModelMap model) {

        return "/admin/photos/list";
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
        //审核已通过才显示出来
        Page<PhotosModel> list = photosService.findByStatus(PhotoStatus.APPROVED, pageable);

        return new TableData(list, sEcho, false);
    }
}