/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import com.aboutdata.commons.enums.Oauth2Type;
import com.aboutdata.commons.enums.PhotoStatus;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 存储第三方登录的账号信息
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_open_auth2")
public class OpenAuth2 extends BaseEntity {

    @Column(nullable = false, length = 20)
    private String oauthId;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private Oauth2Type type;

    @ManyToOne
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;
    

    public String getOauthId() {
        return oauthId;
    }

    public void setOauthId(String oauthId) {
        this.oauthId = oauthId;
    }

    public Oauth2Type getType() {
        return type;
    }

    public void setType(Oauth2Type type) {
        this.type = type;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    @Override
    public String toString() {
        return "OpenAuth2{" + "oauthId=" + oauthId + ", type=" + type + "}";
    }
    

}
