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
public class Features implements Serializable{

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

    @Override
    public String toString() {
        return "Features{" + "dimPrivacy=" + dimPrivacy + ", enableSMS=" + enableSMS + '}';
    }

}
