/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class RoleModel extends BaseModel {

    private String name;
    private Boolean isSystem;
    private String description;
    private List<String> authorities = new ArrayList();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getIsSystem() {
        return isSystem;
    }

    public void setIsSystem(Boolean isSystem) {
        this.isSystem = isSystem;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<String> getAuthorities() {
        return authorities;
    }

    public void setAuthorities(List<String> authorities) {
        this.authorities = authorities;
    }

    @Override
    public String toString() {
        return "RoleModel{" + "name=" + name + ", isSystem=" + isSystem + ", description=" + description + ", authorities=" + authorities + '}';
    }
}
