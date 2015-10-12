package com.aboutdata.service;

import com.aboutdata.domain.Role;
import com.aboutdata.model.RoleModel;
import java.util.List;

/**
 * Service - 角色
 *
 *
 *
 */
public interface RoleService {

    public RoleModel find(String id);

    public List<RoleModel> findAll();

    public void save(Role role);

    public List<Role> findList(String... ids);

    public void update(String id, String name, String description, String[] authorities);

}
