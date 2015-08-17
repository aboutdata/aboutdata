package com.aboutdata.dao;

import com.aboutdata.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Dao - 角色
 *
 *
 *
 */
@Repository
public interface RoleDao extends JpaRepository<Role, Long> {

}
