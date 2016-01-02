/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import com.aboutdata.commons.enums.CommentsType;
import com.aboutdata.commons.enums.PhotoStatus;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Length;

/**
 * 主要记录评论信息
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_comments")
public class Comments extends BaseEntity {

    /**
     *
     * 被评论的主体
     */
//    @OneToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "entity_id", nullable = false)
    @Column(length = 36)
    private String entity_id;

    @Length(max = 500)
    private String comment;

    @Enumerated(EnumType.STRING)
    @Column(nullable = true, length = 10)
    private CommentsType type;

    @ManyToOne
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;

    public String getEntity_id() {
        return entity_id;
    }

    public void setEntity_id(String entity_id) {
        this.entity_id = entity_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public CommentsType getType() {
        return type;
    }

    public void setType(CommentsType type) {
        this.type = type;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

}
