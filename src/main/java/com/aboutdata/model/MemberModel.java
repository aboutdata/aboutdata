/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model;

import com.aboutdata.commons.enums.Gender;
import java.util.Date;
/**
 * 会员用户
 *
 * @author Administrator
 */
public class MemberModel extends BaseModel {

    private String username;
    private String email;
    private Long point;
    private Boolean isEnabled;
    private Boolean isLocked;
    private Integer loginFailureCount;
    private Date lockedDate;
    private String registerIp;
    private String loginIp;
    private Date loginDate;
    private String name;
    private Gender gender;
    private Date birth;
    private String address;
    private String zipCode;
    private String phone;
    private String mobile;

    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getPoint() {
        return point;
    }

    public void setPoint(Long point) {
        this.point = point;
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

    public void setLoginFailureCount(Integer loginFailureCount) {
        this.loginFailureCount = loginFailureCount;
    }

    public Date getLockedDate() {
        return lockedDate;
    }

    public void setLockedDate(Date lockedDate) {
        this.lockedDate = lockedDate;
    }

    public String getRegisterIp() {
        return registerIp;
    }

    public void setRegisterIp(String registerIp) {
        this.registerIp = registerIp;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        return "MemberModel{" + "username=" + username + ", email=" + email + ", point=" + point + ", isEnabled=" + isEnabled + ", isLocked=" + isLocked + ", loginFailureCount=" + loginFailureCount + ", lockedDate=" + lockedDate + ", registerIp=" + registerIp + ", loginIp=" + loginIp + ", loginDate=" + loginDate + ", name=" + name + ", gender=" + gender + ", birth=" + birth + ", address=" + address + ", zipCode=" + zipCode + ", phone=" + phone + ", mobile=" + mobile + '}';
    }

}
