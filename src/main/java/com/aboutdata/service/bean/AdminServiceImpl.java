package com.aboutdata.service.bean;

import com.aboutdata.dao.AdminDao;
import com.aboutdata.domain.Admin;
import com.aboutdata.domain.Role;
import com.aboutdata.exception.AdminNotFound;
import com.aboutdata.model.AdminModel;
import com.aboutdata.model.RoleModel;
import com.aboutdata.model.dto.AdminDTO;
import com.aboutdata.model.dto.RoleDTO;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.service.AdminService;
import com.aboutdata.service.RoleService;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
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

    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    @Override
    @Transactional(readOnly = true)
    public AdminModel findById(String id) {
        Admin admin = adminDao.findOne(id);
        return AdminDTO.getAdminModelDTO(admin);
    }

    @Transactional
    @Override
    public void save(Admin admin) {
        adminDao.save(admin);
    }

    @Transactional(rollbackFor = AdminNotFound.class)
    @Override
    public Admin update(String id, String email, String name, String department, boolean isEnabled, String[] roles) {
        Admin admin = adminDao.findOne(id);

        admin.setEmail(email);
        admin.setName(name);
        admin.setDepartment(department);
        admin.setIsEnabled(isEnabled);
        admin.setRoles(new HashSet(roleService.findList(roles)));

        return admin;
    }

    @Transactional(readOnly = true)
    @Override
    public boolean usernameExists(String username) {
        return adminDao.usernameExists(username) > 0;
    }

    @Transactional(readOnly = true)
    @Override
    public Admin findByUsername(String username) {
        return adminDao.findByUsername(username);
    }

    @Transactional(readOnly = true)
    @Override
    public List<String> findAuthorities(String id) {
        List<String> authorities = new ArrayList<>();
        Admin admin = adminDao.findOne(id);
        if (admin != null) {
            for (Role role : admin.getRoles()) {
                authorities.addAll(role.getAuthorities());
            }
        }
        return authorities;
    }

    @Transactional(readOnly = true)
    @Override
    public boolean isAuthenticated() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            return subject.isAuthenticated();
        }
        return false;
    }

    @Transactional(readOnly = true)
    @Override
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
    @Override
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
    public Page<AdminModel> find(Pageable pageable) {
        Page<Admin> page = adminDao.findAll(pageable);
        List<Admin> admins = page.getContent();
        List<AdminModel> models = AdminDTO.getAdminModeslDTO(admins);
        Page<AdminModel> result = new PageImpl(models, pageable, page.getTotalElements());
        return result;
    }

}
