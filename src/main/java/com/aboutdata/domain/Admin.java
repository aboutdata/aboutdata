package com.aboutdata.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 管理员
 *
 */
@Entity
@Table(name = "xx_admin")
//@SequenceGenerator(name = "sequenceGenerator", sequenceName = "xx_admin_sequence")
public class Admin extends BaseEntity {

    private static final long serialVersionUID = -7519486823153844426L;

    /**
     * 用户名
     */
    @NotEmpty(groups = Save.class)
    @Pattern(regexp = "^[0-9a-z_A-Z\\u4e00-\\u9fa5]+$")
    @Length(min = 2, max = 20)
    @Column(nullable = false, updatable = false, unique = true, length = 100)
    private String username;

    /**
     * 密码
     */
    @NotEmpty(groups = Save.class)
    @Pattern(regexp = "^[^\\s&\"<>]+$")
    @Length(min = 4, max = 32)
    @Column(nullable = false, length = 32)
    private String password;

    /**
     * 密码salt
     */
    @NotEmpty(groups = Save.class)
    @Column(nullable = false, length = 64)
    private String salt;

    /**
     * E-mail
     */
    @NotEmpty
    @Email
    @Length(max = 200)
    @Column(nullable = false)
    private String email;

    /**
     * 姓名
     */
    @Length(max = 200)
    private String name;

    /**
     * 部门
     */
    @Length(max = 200)
    private String department;

    /**
     * 是否启用
     */
    @NotNull
    @Column(nullable = false)
    private Boolean isEnabled;

    /**
     * 是否锁定
     */
    @Column(nullable = false)
    private Boolean isLocked;

    /**
     * 连续登录失败次数
     */
    @Column(nullable = false)
    private Integer loginFailureCount;

    /**
     * 锁定日期
     */
    private Date lockedDate;

    /**
     * 最后登录日期
     */
    private Date loginDate;

    /**
     * 最后登录IP
     */
    private String loginIp;

    /**
     * 角色
     */
    @NotEmpty
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "xx_admin_role")
    private Set<Role> roles = new HashSet<Role>();

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Boolean getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }

    public Boolean getIsLocked() {
        return isLocked;
    }

    public void setIsLocked(Boolean isLocked) {
        this.isLocked = isLocked;
    }

    public Integer getLoginFailureCount() {
        return loginFailureCount;
    }

    /**
     * 设置连续登录失败次数
     *
     * @param loginFailureCount 连续登录失败次数
     */
    public void setLoginFailureCount(Integer loginFailureCount) {
        this.loginFailureCount = loginFailureCount;
    }

    /**
     * 获取锁定日期
     *
     * @return 锁定日期
     */
    public Date getLockedDate() {
        return lockedDate;
    }

    /**
     * 设置锁定日期
     *
     * @param lockedDate 锁定日期
     */
    public void setLockedDate(Date lockedDate) {
        this.lockedDate = lockedDate;
    }

    /**
     * 获取最后登录日期
     *
     * @return 最后登录日期
     */
    public Date getLoginDate() {
        return loginDate;
    }

    /**
     * 设置最后登录日期
     *
     * @param loginDate 最后登录日期
     */
    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    /**
     * 获取最后登录IP
     *
     * @return 最后登录IP
     */
    public String getLoginIp() {
        return loginIp;
    }

    /**
     * 设置最后登录IP
     *
     * @param loginIp 最后登录IP
     */
    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "Admin{" + "username=" + username + ", password=" + password + ", salt=" + salt + ", email=" + email + ", name=" + name + ", department=" + department + ", isEnabled=" + isEnabled + ", isLocked=" + isLocked + ", loginFailureCount=" + loginFailureCount + ", lockedDate=" + lockedDate + ", loginDate=" + loginDate + ", loginIp=" + loginIp + ", roles=" + roles + '}';
    }

   

}
