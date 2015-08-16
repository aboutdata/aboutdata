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
@SequenceGenerator(name = "sequenceGenerator", sequenceName = "xx_member_sequence")
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
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 安全密匙
     */
    private String salt;

    /**
     * E-mail
     */
    private String email;

    /**
     * 积分
     */
    private Long point;

    /**
     * 消费金额
     */
    private BigDecimal amount;

    /**
     * 余额
     */
    private BigDecimal balance;

    /**
     * 是否启用
     */
    private Boolean isEnabled;

    /**
     * 是否锁定
     */
    private Boolean isLocked;

    /**
     * 连续登录失败次数
     */
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
    private String address;

    /**
     * 邮编
     */
    private String zipCode;

    /**
     * 电话
     */
    private String phone;

    /**
     * 手机
     */
    private String mobile;

    /**
     * 会员注册项值0
     */
    private String attributeValue0;

    /**
     * 会员注册项值1
     */
    private String attributeValue1;

    /**
     * 会员注册项值2
     */
    private String attributeValue2;

    /**
     * 会员注册项值3
     */
    private String attributeValue3;

    /**
     * 会员注册项值4
     */
    private String attributeValue4;

    /**
     * 会员注册项值5
     */
    private String attributeValue5;

    /**
     * 会员注册项值6
     */
    private String attributeValue6;

    /**
     * 会员注册项值7
     */
    private String attributeValue7;

    /**
     * 会员注册项值8
     */
    private String attributeValue8;

    /**
     * 会员注册项值9
     */
    private String attributeValue9;

    /**
     * 地区
     */
    private Area area;

    /**
     * 会员等级
     */
    private MemberRank memberRank;

    /**
     * 获取用户名
     *
     * @return 用户名
     */
    @NotEmpty(groups = Save.class)
    @Pattern(regexp = "^[0-9a-z_A-Z\\u4e00-\\u9fa5]+$")
    @Column(nullable = false, updatable = false, unique = true, length = 100)
    public String getUsername() {
        return username;
    }

    /**
     * 设置用户名
     *
     * @param username 用户名
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取密码
     *
     * @return 密码
     */
    @NotEmpty(groups = Save.class)
    @Pattern(regexp = "^[^\\s&\"<>]+$")
    @Column(nullable = false)
    public String getPassword() {
        return password;
    }

    /**
     * 设置密码
     *
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取E-mail
     *
     * @return E-mail
     */
    @NotEmpty
    @Email
    @Length(max = 200)
    @Column(nullable = false)
    public String getEmail() {
        return email;
    }

    /**
     * 设置E-mail
     *
     * @param email E-mail
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取积分
     *
     * @return 积分
     */
    @NotNull(groups = Save.class)
    @Min(0)
    @Column(nullable = false)
    public Long getPoint() {
        return point;
    }

    /**
     * 设置积分
     *
     * @param point 积分
     */
    public void setPoint(Long point) {
        this.point = point;
    }

    /**
     * 获取消费金额
     *
     * @return 消费金额
     */
    @Column(nullable = false, precision = 27, scale = 12)
    public BigDecimal getAmount() {
        return amount;
    }

    /**
     * 设置消费金额
     *
     * @param amount 消费金额
     */
    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    /**
     * 获取余额
     *
     * @return 余额
     */
    @NotNull(groups = Save.class)
    @Min(0)
    @Digits(integer = 12, fraction = 3)
    @Column(nullable = false, precision = 27, scale = 12)
    public BigDecimal getBalance() {
        return balance;
    }

    /**
     * 设置余额
     *
     * @param balance 余额
     */
    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    /**
     * 获取是否启用
     *
     * @return 是否启用
     */
    @NotNull
    @Column(nullable = false)
    public Boolean getIsEnabled() {
        return isEnabled;
    }

    /**
     * 设置是否启用
     *
     * @param isEnabled 是否启用
     */
    public void setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }

    /**
     * 获取是否锁定
     *
     * @return 是否锁定
     */
    @Column(nullable = false)
    public Boolean getIsLocked() {
        return isLocked;
    }

    /**
     * 设置是否锁定
     *
     * @param isLocked 是否锁定
     */
    public void setIsLocked(Boolean isLocked) {
        this.isLocked = isLocked;
    }

    /**
     * 获取连续登录失败次数
     *
     * @return 连续登录失败次数
     */
    @Column(nullable = false)
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
     * 获取注册IP
     *
     * @return 注册IP
     */
    @Column(nullable = false, updatable = false)
    public String getRegisterIp() {
        return registerIp;
    }

    /**
     * 设置注册IP
     *
     * @param registerIp 注册IP
     */
    public void setRegisterIp(String registerIp) {
        this.registerIp = registerIp;
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
     * 获取姓名
     *
     * @return 姓名
     */
    @Length(max = 200)
    public String getName() {
        return name;
    }

    /**
     * 设置姓名
     *
     * @param name 姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取性别
     *
     * @return 性别
     */
    public Gender getGender() {
        return gender;
    }

    /**
     * 设置性别
     *
     * @param gender 性别
     */
    public void setGender(Gender gender) {
        this.gender = gender;
    }

    /**
     * 获取出生日期
     *
     * @return 出生日期
     */
    public Date getBirth() {
        return birth;
    }

    /**
     * 设置出生日期
     *
     * @param birth 出生日期
     */
    public void setBirth(Date birth) {
        this.birth = birth;
    }

    /**
     * 获取地址
     *
     * @return 地址
     */
    @Length(max = 200)
    public String getAddress() {
        return address;
    }

    /**
     * 设置地址
     *
     * @param address 地址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取邮编
     *
     * @return 邮编
     */
    @Length(max = 200)
    public String getZipCode() {
        return zipCode;
    }

    /**
     * 设置邮编
     *
     * @param zipCode 邮编
     */
    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    /**
     * 获取电话
     *
     * @return 电话
     */
    @Length(max = 200)
    public String getPhone() {
        return phone;
    }

    /**
     * 设置电话
     *
     * @param phone 电话
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取手机
     *
     * @return 手机
     */
    @Length(max = 200)
    public String getMobile() {
        return mobile;
    }

    /**
     * 设置手机
     *
     * @param mobile 手机
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     * 获取会员注册项值0
     *
     * @return 会员注册项值0
     */
    @Length(max = 200)
    public String getAttributeValue0() {
        return attributeValue0;
    }

    /**
     * 设置会员注册项值0
     *
     * @param attributeValue0 会员注册项值0
     */
    public void setAttributeValue0(String attributeValue0) {
        this.attributeValue0 = attributeValue0;
    }

    /**
     * 获取会员注册项值1
     *
     * @return 会员注册项值1
     */
    @Length(max = 200)
    public String getAttributeValue1() {
        return attributeValue1;
    }

    /**
     * 设置会员注册项值1
     *
     * @param attributeValue1 会员注册项值1
     */
    public void setAttributeValue1(String attributeValue1) {
        this.attributeValue1 = attributeValue1;
    }

    /**
     * 获取会员注册项值2
     *
     * @return 会员注册项值2
     */
    @Length(max = 200)
    public String getAttributeValue2() {
        return attributeValue2;
    }

    /**
     * 设置会员注册项值2
     *
     * @param attributeValue2 会员注册项值2
     */
    public void setAttributeValue2(String attributeValue2) {
        this.attributeValue2 = attributeValue2;
    }

    /**
     * 获取会员注册项值3
     *
     * @return 会员注册项值3
     */
    @Length(max = 200)
    public String getAttributeValue3() {
        return attributeValue3;
    }

    /**
     * 设置会员注册项值3
     *
     * @param attributeValue3 会员注册项值3
     */
    public void setAttributeValue3(String attributeValue3) {
        this.attributeValue3 = attributeValue3;
    }

    /**
     * 获取会员注册项值4
     *
     * @return 会员注册项值4
     */
    @Length(max = 200)
    public String getAttributeValue4() {
        return attributeValue4;
    }

    /**
     * 设置会员注册项值4
     *
     * @param attributeValue4 会员注册项值4
     */
    public void setAttributeValue4(String attributeValue4) {
        this.attributeValue4 = attributeValue4;
    }

    /**
     * 获取会员注册项值5
     *
     * @return 会员注册项值5
     */
    @Length(max = 200)
    public String getAttributeValue5() {
        return attributeValue5;
    }

    /**
     * 设置会员注册项值5
     *
     * @param attributeValue5 会员注册项值5
     */
    public void setAttributeValue5(String attributeValue5) {
        this.attributeValue5 = attributeValue5;
    }

    /**
     * 获取会员注册项值6
     *
     * @return 会员注册项值6
     */
    @Length(max = 200)
    public String getAttributeValue6() {
        return attributeValue6;
    }

    /**
     * 设置会员注册项值6
     *
     * @param attributeValue6 会员注册项值6
     */
    public void setAttributeValue6(String attributeValue6) {
        this.attributeValue6 = attributeValue6;
    }

    /**
     * 获取会员注册项值7
     *
     * @return 会员注册项值7
     */
    @Length(max = 200)
    public String getAttributeValue7() {
        return attributeValue7;
    }

    /**
     * 设置会员注册项值7
     *
     * @param attributeValue7 会员注册项值7
     */
    public void setAttributeValue7(String attributeValue7) {
        this.attributeValue7 = attributeValue7;
    }

    /**
     * 获取会员注册项值8
     *
     * @return 会员注册项值8
     */
    @Length(max = 200)
    public String getAttributeValue8() {
        return attributeValue8;
    }

    /**
     * 设置会员注册项值8
     *
     * @param attributeValue8 会员注册项值8
     */
    public void setAttributeValue8(String attributeValue8) {
        this.attributeValue8 = attributeValue8;
    }

    /**
     * 获取会员注册项值9
     *
     * @return 会员注册项值9
     */
    @Length(max = 200)
    public String getAttributeValue9() {
        return attributeValue9;
    }

    /**
     * 设置会员注册项值9
     *
     * @param attributeValue9 会员注册项值9
     */
    public void setAttributeValue9(String attributeValue9) {
        this.attributeValue9 = attributeValue9;
    }

   
    /**
     * 获取地区
     *
     * @return 地区
     */
    @ManyToOne(fetch = FetchType.LAZY)
    public Area getArea() {
        return area;
    }

    /**
     * 设置地区
     *
     * @param area 地区
     */
    public void setArea(Area area) {
        this.area = area;
    }

    /**
     * 获取会员等级
     *
     * @return 会员等级
     */
    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(nullable = false)
    public MemberRank getMemberRank() {
        return memberRank;
    }

    /**
     * 设置会员等级
     *
     * @param memberRank 会员等级
     */
    public void setMemberRank(MemberRank memberRank) {
        this.memberRank = memberRank;
    }
}
