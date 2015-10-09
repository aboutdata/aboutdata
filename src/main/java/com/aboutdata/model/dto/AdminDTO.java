/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model.dto;

import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Role;
import com.aboutdata.model.AdminModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * 主要用于admin实体类和Model类之间的转换工作 防止fastxml转换json时 死循环
 *
 * @author Administrator
 */
public class AdminDTO {

    /**
     * admin转换成AdminModel
     *
     * @param admin
     * @return
     */
    public static AdminModel getAdminModelDTO(Admin admin) {
        AdminModel result = null;
        if (admin != null) {
            result = new AdminModel();

            result.setId(admin.getId());
            result.setUsername(admin.getUsername());
            result.setName(admin.getName());
            result.setEmail(admin.getEmail());
            result.setIsEnabled(admin.getIsEnabled());
            result.setIsLocked(admin.getIsLocked());
            result.setLockedDate(admin.getLockedDate());
            result.setLoginFailureCount(admin.getLoginFailureCount());
            result.setLoginDate(admin.getLoginDate());
            result.setDepartment(admin.getDepartment());
            result.setCreateDate(admin.getCreateDate());
            result.setModifyDate(admin.getModifyDate());
            //这里转换 直接RoleModel
            Set<Role> roles = admin.getRoles();
            result.setRoles(RoleDTO.getRoleModeslDTO(roles));
        }
        return result;
    }

    /**
     * Admin转换成AdminModel根据list转换
     *
     * @param admins
     * @return
     */
    public static List<AdminModel> getAdminModeslDTO(List<Admin> admins) {
        List<AdminModel> result = null;
        if (admins != null && admins.size() > 0) {
            result = new ArrayList(admins.size());
            for (Admin admin : admins) {
                //DTO转换
                AdminModel model = new AdminModel();
                model.setId(admin.getId());
                model.setUsername(admin.getUsername());
                model.setName(admin.getName());
                model.setEmail(admin.getEmail());
                model.setIsEnabled(admin.getIsEnabled());
                model.setIsLocked(admin.getIsLocked());
                model.setLockedDate(admin.getLockedDate());
                model.setLoginFailureCount(admin.getLoginFailureCount());
                model.setLoginDate(admin.getLoginDate());
                model.setLoginIp(admin.getLoginIp());
                model.setDepartment(admin.getDepartment());
                model.setCreateDate(admin.getCreateDate());
                model.setModifyDate(admin.getModifyDate());
                Set<Role> roles = admin.getRoles();
                model.setRoles(RoleDTO.getRoleModeslDTO(roles));
                result.add(model);
            }
        }
        return result;
    }
}
