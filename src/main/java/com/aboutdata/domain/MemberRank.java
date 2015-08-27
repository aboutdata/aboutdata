package com.aboutdata.domain;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PreRemove;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 会员等级
 *
 *
 *
 */
@Entity
@Table(name = "xx_member_rank")
//@SequenceGenerator(name = "sequenceGenerator", sequenceName = "xx_member_rank_sequence")
public class MemberRank extends BaseEntity {

    private static final long serialVersionUID = 3599029355500655209L;

    /**
     * 名称
     */
    @NotEmpty
    @Length(max = 100)
    @Column(nullable = false, unique = true, length = 100)
    private String name;

    /**
     * 优惠比例
     */
    @NotNull
    @Min(0)
    @Digits(integer = 3, fraction = 3)
    @Column(nullable = false, precision = 12, scale = 6)
    private Double scale;

    /**
     * 消费金额
     */
    @Min(0)
    @Digits(integer = 12, fraction = 3)
    @Column(unique = true, precision = 21, scale = 6)
    private BigDecimal amount;

    /**
     * 是否默认
     */
    @NotNull
    @Column(nullable = false)
    private Boolean isDefault;

    /**
     * 是否特殊
     */
    @NotNull
    @Column(nullable = false)
    private Boolean isSpecial;

    /**
     * 会员
     */
    @OneToMany(mappedBy = "memberRank", fetch = FetchType.LAZY)
    private Set<Member> members = new HashSet<Member>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getScale() {
        return scale;
    }

    public void setScale(Double scale) {
        this.scale = scale;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Boolean getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Boolean isDefault) {
        this.isDefault = isDefault;
    }

    public Boolean getIsSpecial() {
        return isSpecial;
    }

    public void setIsSpecial(Boolean isSpecial) {
        this.isSpecial = isSpecial;
    }

    public Set<Member> getMembers() {
        return members;
    }

    /**
     * 设置会员
     *
     * @param members 会员
     */
    public void setMembers(Set<Member> members) {
        this.members = members;
    }
}
