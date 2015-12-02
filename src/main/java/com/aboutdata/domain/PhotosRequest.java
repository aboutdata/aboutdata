/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import com.aboutdata.commons.enums.PhotosRequestStatus;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.Length;

/**
 * 图片投稿(上传)
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_photos_request")
public class PhotosRequest extends BaseEntity {

    /**
     * 标题
     */
    @Length(max = 200)
    private String title;

    /**
     * 原图片
     */
    private String source;

    /**
     * 壁纸原图的宽高
     */
    @Column(nullable = false)
    private int width = 0;

    @Column(nullable = false)
    private int height = 0;

    /**
     * 图片大小
     */
    @Column(nullable = false)
    private long size;

    /**
     * 排序 暂时用orders用来存储访问次数
     */
    @Min(0)
    @Column(name = "orders")
    private Integer order;

    /**
     * @ 壁纸的描述信息
     * @ 主要为更好的说明图片内容和搜索引擎收录
     */
    @Length(max = 500)
    private String description;

    /**
     * 批准意见
     */
    @Length(max = 500)
    private String claim;
    /**
     * PhotoStatus 状态信息
     */
    @Enumerated(EnumType.STRING)
    @Column(nullable = true, length = 20)
    private PhotosRequestStatus status = PhotosRequestStatus.UNASSIGNED;

    @ManyToOne
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getClaim() {
        return claim;
    }

    public void setClaim(String claim) {
        this.claim = claim;
    }

    public PhotosRequestStatus getStatus() {
        return status;
    }

    public void setStatus(PhotosRequestStatus status) {
        this.status = status;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

}
