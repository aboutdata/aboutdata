/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import com.aboutdata.commons.OrderEntity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 相册集
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_photos_album")
public class PhotosAlbum extends OrderEntity {

    private static final long serialVersionUID = -5132652107151648662L;

    /**
     * 名称
     */
    @NotEmpty
    @Length(max = 200)
    @Column(nullable = false)
    private String name;
    /**
     * 层级
     */
    @Column(nullable = false)
    private Integer grade;
    /**
     * 上级分类
     */
    @Column(nullable = true)
    private Long parentId;

    @ManyToOne
    @JoinColumn(name = "member_id",nullable = false)
    private Member member;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    @Override
    public String toString() {
        return "PhotosAlbum{" + "name=" + name + ", grade=" + grade + ", parentId=" + parentId + ", member=" + member + '}';
    }
    
}
