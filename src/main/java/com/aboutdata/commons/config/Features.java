/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.config;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 系统功能是否开启特性
 *
 * @author aboutdata.me
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Features implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 3824825356562068350L;

    /**
     * 用户信息是否显示完整 实际情况是开发这模式需要开启此项 设置flase
     *
     */
    @XmlElement
    private boolean dimPrivacy = true;  //默认值

    /**
     * 启用发送短信功能
     */
    @XmlElement
    private boolean enableSMS = false;  //默认值

    @XmlElement
    private boolean enableSearch = false;  //默认值

    /**
     * 是否启用用户注册和登录功能
     */
    @XmlElement
    private boolean enableLogin = false;  //默认值

    public boolean isDimPrivacy() {
        return dimPrivacy;
    }

    public void setDimPrivacy(boolean dimPrivacy) {
        this.dimPrivacy = dimPrivacy;
    }

    public boolean isEnableSMS() {
        return enableSMS;
    }

    public void setEnbaleSMS(boolean enableSMS) {
        this.enableSMS = enableSMS;
    }

    public boolean isEnableSearch() {
        return enableSearch;
    }

    public void setEnableSearch(boolean enableSearch) {
        this.enableSearch = enableSearch;
    }

    public boolean isEnableLogin() {
        return enableLogin;
    }

    public void setEnableLogin(boolean enableLogin) {
        this.enableLogin = enableLogin;
    }

    public void setEnableSMS(boolean enableSMS) {
        this.enableSMS = enableSMS;
    }

    @Override
    public String toString() {
        return "Features{" + "dimPrivacy=" + dimPrivacy + ", enableSMS=" + enableSMS + '}';
    }

}
