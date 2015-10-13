/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.model.TagModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Resource;
import com.aboutdata.service.TagService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Tagistrator
 */
@Controller("adminTagContrller")
@RequestMapping("/admin/tag")
public class TagController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource(name = "tagServiceImpl")
    private TagService tagService;

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String displayList(ModelMap model) {

        return "/admin/content/tag/list";
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
    public TableData<TagModel> getByDatatables(int iDisplayLength,
            int iDisplayStart,
            String sColName,
            String sSortDir_0,
            String sSearch,
            int sEcho) {
        Pageable pageable = new PageRequest(0, 25);
        Page<TagModel> list = tagService.find(pageable);
        TableData<TagModel> table = new TableData(list, sEcho, false);
        return table;
    }

}
