package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.domain.Admin;
import com.aboutdata.service.AdminService;
import com.aboutdata.service.RoleService;
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
 *
 * @author youyou
 */
@Controller
@RequestMapping("/admin/employee")
public class AdminController {
    
    Logger logger = LoggerFactory.getLogger(getClass());
    
    @Resource(name = "adminServiceImpl")
    private AdminService adminService;
    
    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String displayList(ModelMap model) {
        
        return "/admin/employee/list";
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
        Pageable pageable = new PageRequest(0, 25);
        Page<Admin> list = adminService.find(pageable);
        logger.info("list {}", list.getContent());
        return new TableData(list, sEcho);
    }
    
}
