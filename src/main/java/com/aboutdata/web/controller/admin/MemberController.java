/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.admin;

import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import org.slf4j.Logger;
import com.aboutdata.commons.TableData;
import com.aboutdata.model.AdminModel;
import com.aboutdata.model.MemberModel;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/admin/member")
public class MemberController {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String displayList(ModelMap model) {

        return "/admin/member/list";
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
    public TableData<MemberModel> getByDatatables(int iDisplayLength,
            int iDisplayStart,
            String sColName,
            String sSortDir_0,
            String sSearch,
            int sEcho) {
        Pageable pageable = new PageRequest(0, 25);
        Page<MemberModel> list = memberService.find(pageable);
        logger.info("list {}", list.getContent());

        TableData<MemberModel> table = new TableData(list, sEcho, false);
        logger.info("table {}", table);
        return table;
    }

    @RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
    public String displayAdminDetails(@PathVariable("id") String id, ModelMap model) {
        logger.info("displayAdminDetails {}", id);
        MemberModel member = memberService.findById(id);
        model.addAttribute("member", member);
        return "/admin/member/details";
    }
}
