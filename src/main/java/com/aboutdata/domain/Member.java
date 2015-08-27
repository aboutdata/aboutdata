package com.aboutdata.domain;

import com.aboutdata.web.interceptor.MemberInterceptor;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang.StringUtils;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 会员
 *
 *
 *
 */
@Entity
@Table(name = "xx_member")
//@SequenceGenerator(name = "sequenceGenerator", sequenceName = "xx_member_sequence")
public class Member extends BaseEntity {

    private static final long serialVersionUID = 1533130686714725835L;

    /**
     * 性别
     */
    public enum Gender {

        /**
         * 男
         */
        male,
        /**
         * 女
         */
        female
    }

    /**
     * "身份信息"参数名称
     */
    public static final String PRINCIPAL_ATTRIBUTE_NAME = MemberInterceptor.class.getName() + ".PRINCIPAL";

    /**
     * "用户名"Cookie名称
     */
    public static final String USERNAME_COOKIE_NAME = "username";

    /**
     * 会员注册项值属性个数
     */
    public static final int ATTRIBUTE_VALUE_PROPERTY_COUNT = 10;

    /**
     * 会员注册项值属性名称前缀
     */
    public static final String ATTRIBUTE_VALUE_PROPERTY_NAME_PREFIX = "attributeValue";

    /**
     * 最大收藏商品数
     */
    public static final Integer MAX_FAVORITE_COUNT = 10;

    /**
     * 用户名
     */
    @NotEmpty(groups = Save.class)
    @Pattern(regexp = "^[0-9a-z_A-Z\\u4e00-\\u9fa5]+$")
    @Column(nullable = false, updatable = false, unique = true, length = 100)
    private String username;

    /**
     * 密码
     */
    @NotEmpty(groups = Save.class)
    @Pattern(regexp = "^[^\\s&\"<>]+$")
    @Column(nullable = false)
    private String password;

    /**
     * 安全密匙
     */
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
     * 积分
     */
    @NotNull(groups = Save.class)
    @Min(0)
    @Column(nullable = false)
    private Long point;

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
     * 注册IP
     */
    private String registerIp;

    /**
     * 最后登录IP
     */
    private String loginIp;

    /**
     * 最后登录日期
     */
    private Date loginDate;

    /**
     * 姓名
     */
    @Length(max = 200)
    private String name;

    /**
     * 性别
     */
    private Gender gender;

    /**
     * 出生日期
     */
    private Date birth;

    /**
     * 地址
     */
    @Length(max = 200)
    private String address;

    /**
     * 邮编
     */
    @Length(max = 200)
    private String zipCode;

    /**
     * 电话
     */
    @Length(max = 200)
    private String phone;

    /**
     * 手机
     */
    @Length(max = 200)
    private String mobile;

    /**
     * 地区
     */
    @ManyToOne(fetch = FetchType.LAZY)
    private Area area;

    /**
     * 会员等级
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false)
    private MemberRank memberRank;

    @OneToMany(mappedBy = "member", fetch = FetchType.LAZY)
    private Set<PhotosAlbum> photosAlbums;

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

    @Column(nullable = false, updatable = false)
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

    @Length(max = 200)
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public MemberRank getMemberRank() {
        return memberRank;
    }

    public void setMemberRank(MemberRank memberRank) {
        this.memberRank = memberRank;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public Set<PhotosAlbum> getPhotosAlbums() {
        return photosAlbums;
    }

    public void setPhotosAlbums(Set<PhotosAlbum> photosAlbums) {
        this.photosAlbums = photosAlbums;
    }

}
