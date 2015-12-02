/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model;

import com.aboutdata.commons.enums.PhotosRequestStatus;

/**
 *
 * @author Administrator
 */
public class PhotosRequestModel extends BaseModel {

    private String title;

    private int width;

    private int height;

    private long size;
    /**
     * 原图片
     */
    private String source;

    /**
     * 排序
     */
    private Integer order;

    private String description;

    /**
     * 批准意见
     */
    private String claim;

    /**
     * PhotoStatus 状态信息
     */
    private PhotosRequestStatus status;

    private MemberModel member;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
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

    public PhotosRequestStatus getStatus() {
        return status;
    }

    public void setStatus(PhotosRequestStatus status) {
        this.status = status;
    }

    public MemberModel getMember() {
        return member;
    }

    public void setMember(MemberModel member) {
        this.member = member;
    }

    public String getClaim() {
        return claim;
    }

    public void setClaim(String claim) {
        this.claim = claim;
    }

}
