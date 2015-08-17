package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.Pageable;
import com.aboutdata.service.AdminService;
import com.aboutdata.service.RoleService;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author youyou
 */

@Controller
@RequestMapping("/admin/employee")
public class AdminController {

    @Resource(name = "adminServiceImpl")
    private AdminService adminService;
    
    
    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    /**
     * 列表
     * @param pageable
     * @param model
     * @return 
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Pageable pageable, ModelMap model) {
        
        return "/admin/employee/list";
    }

}
