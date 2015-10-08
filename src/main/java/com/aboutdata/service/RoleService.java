package com.aboutdata.service;

import com.aboutdata.domain.Role;
import java.util.List;

/**
 * Service - 角色
 *
 *
 *
 */
public interface RoleService {

    public Role find(String id);

    public List<Role> findAll();

    public void save(Role role);

    public List<Role> findList(String... ids);
}
