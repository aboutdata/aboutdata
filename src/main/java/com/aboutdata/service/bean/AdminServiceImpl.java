/*
 * 
 * 
 * 
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.AdminDao;
import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Role;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.service.AdminService;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service - 管理员
 *
 *
 *
 */
@Service("adminServiceImpl")
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminDao adminDao;

    @Transactional(readOnly = true)
    public boolean usernameExists(String username) {
        return adminDao.usernameExists(username) > 0;
    }

    @Transactional(readOnly = true)
    public Admin findByUsername(String username) {
        return adminDao.findByUsername(username);
    }

    @Transactional(readOnly = true)
    public List<String> findAuthorities(String id) {
        List<String> authorities = new ArrayList<String>();
        Admin admin = adminDao.findOne(id);
        if (admin != null) {
            for (Role role : admin.getRoles()) {
                authorities.addAll(role.getAuthorities());
            }
        }
        return authorities;
    }

    @Transactional(readOnly = true)
    public boolean isAuthenticated() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            return subject.isAuthenticated();
        }
        return false;
    }

    @Transactional(readOnly = true)
    public Admin getCurrent() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return adminDao.findOne(principal.getId());
            }
        }
        return null;
    }

    @Transactional(readOnly = true)
    public String getCurrentUsername() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return principal.getUsername();
            }
        }
        return null;
    }

    @Override
    public Page<Admin> find(Pageable pageable) {
        return adminDao.findAll(pageable);
    }

}
