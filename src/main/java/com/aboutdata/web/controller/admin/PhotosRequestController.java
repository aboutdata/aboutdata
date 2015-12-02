package com.aboutdata.web.controller.admin;

import java.io.File;
import java.io.OutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Resource;
import org.apache.commons.io.FileUtils;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aboutdata.commons.TableData;
import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.commons.enums.PhotosRequestStatus;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.PhotosRequestModel;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.PhotosRequestService;
import com.aboutdata.service.PhotosService;

@Controller("adminPhotosRequestController")
@RequestMapping("/admin/photosRequest")
public class PhotosRequestController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private PhotosService photosService;

    @Resource
    private PhotosRequestService photosRequestService;

    @Resource
    private ImageGraphicsService imageGraphicsService;

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

        Page<PhotosRequestModel> list = photosRequestService.findByStatus(PhotosRequestStatus.UNASSIGNED, pageable);

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
        PhotosRequestModel request = photosRequestService.get(id);
        model.addAttribute("photos", request);
        logger.info(id);
        return "/admin/photos/request/single";
    }

    /**
     * 审核通过
     *
     * @param id
     * @param description
     * @param model
     * @return
     */
    @RequestMapping(value = "/approve/{id}", method = RequestMethod.POST)
    public String approve(@PathVariable("id") String id, String description, ModelMap model) {
        photosService.approve(id, description);
        return "redirect:/admin/photosRequest/list";
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

    /**
     * *
     * 后台审核阅览
     *
     * @param id
     * @param reuest
     * @param response
     * @param output
     */
    @RequestMapping(value = "/thumb/{id}")
    public void viewThumbnail(@PathVariable("id") String id,
            HttpServletRequest reuest,
            HttpServletResponse response, OutputStream output) {

        PhotosRequestModel request = photosRequestService.get(id);
        if (request != null) {
            try {
                File source = new File(request.getSource());
                byte[] data = imageGraphicsService.scale(FileUtils.readFileToByteArray(source), 600, 400);

                response.setContentLength(data.length);
                output.write(data);
            } catch (Exception e) {
                logger.error("Had an error getting the thumbnail {}", e);
            }
        } else {
            logger.error("Could not respond with a 500 error");
        }
    }

}
