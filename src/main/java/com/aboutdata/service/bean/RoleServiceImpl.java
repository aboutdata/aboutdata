package com.aboutdata.service.bean;

import com.aboutdata.dao.RoleDao;
import com.aboutdata.domain.Role;
import javax.annotation.Resource;
import com.aboutdata.service.RoleService;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 * Service - 角色
 *
 */
@Service("roleServiceImpl")
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleDao roleDao;

    @Override
    public List<Role> findAll() {

        return roleDao.findAll();

    }

    @Override
    public void save(Role role) {
        roleDao.save(role);
    }
}
