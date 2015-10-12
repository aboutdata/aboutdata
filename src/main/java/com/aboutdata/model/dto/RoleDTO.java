/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model.dto;

import com.aboutdata.domain.Role;
import com.aboutdata.model.RoleModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public class RoleDTO {

    /**
     * role转换成Model
     *
     * @param role
     * @return
     */
    public static RoleModel getRoleModelDTO(Role role) {
        RoleModel result = null;
        if (role != null) {
            result = new RoleModel();
            result.setId(role.getId());
            result.setName(role.getName());
            result.setIsSystem(role.getIsSystem());
            result.setAuthorities(role.getAuthorities());
            result.setDescription(role.getDescription());
            result.setCreateDate(role.getCreateDate());
            result.setModifyDate(role.getModifyDate());
        }
        return result;
    }

    /**
     * role转换成Model根据list转换
     *
     * @param roles
     * @return
     */
    public static List<RoleModel> getRoleModelsDTO(List<Role> roles) {
        List<RoleModel> result = null;
        if (roles != null && roles.size() > 0) {
            result = new ArrayList(roles.size());
            for (Role role : roles) {
                //DTO转换
                RoleModel model = new RoleModel();
                model.setId(role.getId());
                model.setName(role.getName());
                model.setIsSystem(role.getIsSystem());
                model.setAuthorities(role.getAuthorities());
                model.setDescription(role.getDescription());
                model.setCreateDate(role.getCreateDate());
                model.setModifyDate(role.getModifyDate());
                result.add(model);
            }
        }
        return result;
    }

    /**
     * role转换成Model根据Set转换
     *
     * @param roles
     * @return
     */
    public static List<RoleModel> getRoleModeslDTO(Set<Role> roles) {
        List<RoleModel> result = null;
        if (roles != null && roles.size() > 0) {
            result = new ArrayList(roles.size());
            for (Role role : roles) {
                //DTO转换
                RoleModel model = new RoleModel();
                model.setId(role.getId());
                model.setName(role.getName());
                model.setIsSystem(role.getIsSystem());
                model.setAuthorities(role.getAuthorities());
                model.setDescription(role.getDescription());
                model.setCreateDate(role.getCreateDate());
                model.setModifyDate(role.getModifyDate());
                result.add(model);
            }
        }
        return result;
    }
}
