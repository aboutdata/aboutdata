/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.oauth2;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;
import java.util.Date;

/**
 * @ 新浪微博返回主要用户信息
 * @author Administrator 由于vo中缺少json的某个字段属性引起
 * @link http://www.cnblogs.com/yangy608/p/3936785.html
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class SinaWeiboProfile implements Serializable {

    private String id;// 用户UID
    private String idstr;// 字符串型的用户UID
    private String screenName;// 用户昵称
    private String name;// screenName
    private String description;// 用户个人描述
    private String url;// 用户博客地址
    private String profileImageUrl;// 用户头像地址，50×50像素
    private String profileUrl;// 用户的微博统一URL地址
    private String domain;// 用户的个性化域名
    private String weihao;// 用户的微号

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdstr() {
        return idstr;
    }

    public void setIdstr(String idstr) {
        this.idstr = idstr;
    }

    public String getScreenName() {
        return screenName;
    }

    public void setScreenName(String screenName) {
        this.screenName = screenName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }

    public void setProfileImageUrl(String profileImageUrl) {
        this.profileImageUrl = profileImageUrl;
    }

    public String getProfileUrl() {
        return profileUrl;
    }

    public void setProfileUrl(String profileUrl) {
        this.profileUrl = profileUrl;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getWeihao() {
        return weihao;
    }

    public void setWeihao(String weihao) {
        this.weihao = weihao;
    }

}
