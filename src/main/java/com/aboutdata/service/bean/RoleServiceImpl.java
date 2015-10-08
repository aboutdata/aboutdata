package com.aboutdata.service.bean;

import com.aboutdata.dao.RoleDao;
import com.aboutdata.domain.Role;
import javax.annotation.Resource;
import com.aboutdata.service.RoleService;
import java.util.ArrayList;
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
    public Role find(String id) {
        return roleDao.findOne(id);
    }

    @Override
    public List<Role> findAll() {

        return roleDao.findAll();

    }

    @Override
    public List<Role> findList(String... ids) {
        List<Role> result = new ArrayList();
        if (ids != null) {
            for (String id : ids) {
                Role entity = find(id);
                if (entity != null) {
                    result.add(entity);
                }
            }
        }
        return result;
    }

    @Override
    public void save(Role role) {
        roleDao.save(role);
    }

}
