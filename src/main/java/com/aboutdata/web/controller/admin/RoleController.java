/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.admin;

import com.aboutdata.commons.TableData;
import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Role;
import com.aboutdata.model.RoleModel;
import com.aboutdata.service.AdminService;
import com.aboutdata.service.RoleService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
 * @author Administrator
 */
@Controller
@RequestMapping("/admin/role")
public class RoleController {

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
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String displayAdd(ModelMap model) {

        return "/admin/role/add";
    }

    /**
     * 要使用RoleForm来传值，而不是直接用role实体
     *
     * @param name
     * @param description
     * @param authorities
     * @return
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(String name, String description, String[] authorities) {
        Role role = new Role();

        role.setName(name);
        role.setDescription(description);
        role.setIsSystem(false);
        role.setAuthorities(new ArrayList(Arrays.asList(authorities)));
        // role.setAdmins(null);
        roleService.save(role);

        return "redirect:/admin/role/add";
    }

    /**
     * 列表 角色数量少 所以不用分页了
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String displayList(ModelMap model) {
        List<RoleModel> roles = roleService.findAll();
        model.addAttribute("roles", roles);
        return "/admin/role/list";
    }

}
