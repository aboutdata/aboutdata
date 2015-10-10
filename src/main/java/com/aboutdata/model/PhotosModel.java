/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model;

import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.PhotosAlbum;

/**
 *
 * @author Administrator
 */
public class PhotosModel extends BaseModel {

    private String title;

    /**
     * 原图片
     */
    private String source;

    /**
     * 大图片
     */
    private String large;

    /**
     * 中图片
     */
    private String medium;

    /**
     * 缩略图
     */
    private String thumbnail;

    /**
     * 是否来自wallhaven
     */
    private String wallhaven;

    /**
     * 图片服务器地址
     */
    private String storageHost;

    /**
     * 排序
     */
    private Integer order;

    /**
     * PhotoStatus 状态信息
     */
    private PhotoStatus status;

    private PhotosAlbum album;

    private MemberModel member;

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

    public String getLarge() {
        return large;
    }

    public void setLarge(String large) {
        this.large = large;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getWallhaven() {
        return wallhaven;
    }

    public void setWallhaven(String wallhaven) {
        this.wallhaven = wallhaven;
    }

    public String getStorageHost() {
        return storageHost;
    }

    public void setStorageHost(String storageHost) {
        this.storageHost = storageHost;
    }

    public Integer getOrder() {
        return order;
    }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public PhotoStatus getStatus() {
        return status;
    }

    public void setStatus(PhotoStatus status) {
        this.status = status;
    }

    public PhotosAlbum getAlbum() {
        return album;
    }

    public void setAlbum(PhotosAlbum album) {
        this.album = album;
    }

    public MemberModel getMember() {
        return member;
    }

    public void setMember(MemberModel member) {
        this.member = member;
    }

}
