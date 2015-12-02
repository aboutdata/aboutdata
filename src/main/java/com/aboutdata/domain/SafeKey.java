package com.aboutdata.domain;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 安全密钥
 *
 */
@Entity
@Table(name = "xx_member_safekey")
public class SafeKey extends BaseEntity {

    private static final long serialVersionUID = -8536541568286987548L;

    /**
     * 密钥
     */
    @Column(name = "value")
    private String value;

    /**
     * 到期时间
     */
    @Column(name = "expire")
    private Date expire;

    @OneToOne
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;

    /**
     * 判断是否已过期
     *
     * @return 是否已过期
     */
    @Transient
    public boolean hasExpired() {
        return getExpire() != null && new Date().after(getExpire());
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Date getExpire() {
        return expire;
    }

    public void setExpire(Date expire) {
        this.expire = expire;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }
}
