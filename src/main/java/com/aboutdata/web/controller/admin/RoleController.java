package com.aboutdata.web.controller.admin;

import com.aboutdata.domain.Role;
import com.aboutdata.model.RoleModel;
import com.aboutdata.service.RoleService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 角色管理员
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/admin/role")
public class RoleController {

    Logger logger = LoggerFactory.getLogger(getClass());

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

        return "redirect:/admin/role/list";
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

    /**
     * 修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String displayEdit(@PathVariable("id") String id, ModelMap model) {
        RoleModel role = roleService.find(id);
        model.addAttribute("role", role);
        return "/admin/role/edit";
    }

    /**
     * 要使用RoleForm来传值，而不是直接用role实体
     *
     * @param id
     * @param name
     * @param description
     * @param authorities
     * @return
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(String id, String name, String description, String[] authorities) {
        roleService.update(id, name, description, authorities);
        return "redirect:/admin/role/list";
    }

}
