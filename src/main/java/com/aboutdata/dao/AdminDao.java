package com.aboutdata.dao;

import com.aboutdata.domain.Admin;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * Dao - 管理员
 *
 *
 *
 */
@Repository
public interface AdminDao extends JpaRepository<Admin, String> {

    /**
     * 判断用户名是否存在
     *
     * @param username 用户名(忽略大小写)
     * @return 用户名是否存在
     */
    @Query("select count(*) from Admin admin where lower(admin.username) = lower(:username)")
    public int usernameExists(@Param("username") String username);

    /**
     * 根据用户名查找管理员
     *
     * @param username 用户名(忽略大小写)
     * @return 管理员，若不存在则返回null
     */
    @Query("select admin from Admin admin where lower(admin.username) = lower(:username)")
    public Admin findByUsername(@Param("username") String username);

    /**
     * usrname  %username%
     * @param username
     * @param pageable
     * @return 
     */
    public Page<Admin> findByUsernameLike(String username, Pageable pageable);

}
