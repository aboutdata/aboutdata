package com.aboutdata.service.bean;

import com.aboutdata.dao.RoleDao;
import com.aboutdata.domain.Role;
import com.aboutdata.model.RoleModel;
import com.aboutdata.model.dto.RoleDTO;
import javax.annotation.Resource;
import com.aboutdata.service.RoleService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service - 角色
 *
 */
@Service("roleServiceImpl")
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleDao roleDao;

    @Override
    public RoleModel find(String id) {
        Role role = roleDao.findOne(id);
        return RoleDTO.getRoleModelDTO(role);
    }

    @Override
    public List<RoleModel> findAll() {
        List<Role> roles = roleDao.findAll();
        return RoleDTO.getRoleModelsDTO(roles);
    }

    @Override
    public List<Role> findList(String... ids) {
        List<Role> result = new ArrayList();
        if (ids != null) {
            for (String id : ids) {
                Role entity = roleDao.findOne(id);
                if (entity != null) {
                    result.add(entity);
                }
            }
        }
        return result;
    }

    @Override
    @Transactional
    public void save(Role role) {
        roleDao.save(role);
    }

    /**
     *
     * @param id
     * @param name
     * @param description
     * @param authorities
     */
    @Override
    @Transactional
    public void update(String id, String name, String description, String[] authorities) {
        Role role = roleDao.findOne(id);
        role.setName(name);
        role.setDescription(description);
        role.setAuthorities(new ArrayList(Arrays.asList(authorities)));
    }

}
