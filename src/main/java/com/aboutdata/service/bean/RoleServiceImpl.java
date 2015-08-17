package com.aboutdata.service.bean;

import com.aboutdata.dao.RoleDao;
import javax.annotation.Resource;
import com.aboutdata.service.RoleService;
import org.springframework.stereotype.Service;

/**
 * Service - 角色
 *
 */
@Service("roleServiceImpl")
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleDao roleDao;

}
