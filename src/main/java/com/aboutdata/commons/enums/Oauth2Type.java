/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.enums;

/**
 * 第三方登录类型
 *
 * @author Administrator
 */
public enum Oauth2Type implements BaseEnum {

    /**
     * github
     */
    GITHUB("github登录"),
    /**
     * qq
     */
    QQWEIBO("腾讯微博登录"),
    /**
     * 新浪微博
     */
    SINAWEIBO("新浪微博");

    private final String key;

    private Oauth2Type(String key) {
        this.key = key;
    }

    @Override
    public String getKey() {
        return key;
    }
}
