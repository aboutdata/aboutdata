package com.aboutdata.domain;

import com.aboutdata.commons.OrderEntity;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 会员注册项
 *
 *
 *
 */
@Entity
@Table(name = "xx_member_attribute")
//@SequenceGenerator(name = "sequenceGenerator", sequenceName = "xx_member_attribute_sequence")
public class MemberAttribute extends OrderEntity {

    private static final long serialVersionUID = 4513705276569738136L;

    /**
     * 类型
     */
    public enum Type {

        /**
         * 姓名
         */
        name,
        /**
         * 性别
         */
        gender,
        /**
         * 出生日期
         */
        birth,
        /**
         * 地区
         */
        area,
        /**
         * 地址
         */
        address,
        /**
         * 邮编
         */
        zipCode,
        /**
         * 电话
         */
        phone,
        /**
         * 手机
         */
        mobile,
        /**
         * 文本
         */
        text,
        /**
         * 单选项
         */
        select,
        /**
         * 多选项
         */
        checkbox
    }

    /**
     * 名称
     */
    @NotEmpty
    @Length(max = 200)
    @Column(nullable = false)
    private String name;

    /**
     * 类型
     */
    @NotNull(groups = Save.class)
    @Column(nullable = false, updatable = false)
    private Type type;

    /**
     * 是否启用
     */
    @NotNull
    @Column(nullable = false)
    private Boolean isEnabled;

    /**
     * 是否必填
     */
    @NotNull
    @Column(nullable = false)
    private Boolean isRequired;

    /**
     * 属性序号
     */
    @Column(updatable = false)
    private Integer propertyIndex;

    /**
     * 可选项
     */
    @ElementCollection
    @CollectionTable(name = "xx_member_attribute_option")
    private List<String> options = new ArrayList<String>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Boolean getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }

    public Boolean getIsRequired() {
        return isRequired;
    }

    public void setIsRequired(Boolean isRequired) {
        this.isRequired = isRequired;
    }

    public Integer getPropertyIndex() {
        return propertyIndex;
    }

    public void setPropertyIndex(Integer propertyIndex) {
        this.propertyIndex = propertyIndex;
    }

    public List<String> getOptions() {
        return options;
    }

    /**
     * 设置可选项
     *
     * @param options 可选项
     */
    public void setOptions(List<String> options) {
        this.options = options;
    }

}
