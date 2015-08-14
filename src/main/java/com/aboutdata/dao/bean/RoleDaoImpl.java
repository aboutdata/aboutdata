package com.aboutdata.dao.bean;

import com.aboutdata.dao.RoleDao;
import com.aboutdata.domain.Role;
import org.springframework.stereotype.Repository;

/**
 * Dao - 角色
 * 
 * 
 * 
 */
@Repository("roleDaoImpl")
public class RoleDaoImpl extends BaseDaoImpl<Role, Long> implements RoleDao {

}