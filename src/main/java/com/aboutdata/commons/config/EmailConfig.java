/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.config;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * 系统配置信息
 *
 * @author aboutdata.me
 */
@XmlRootElement(name = "EmailConfig")
@XmlAccessorType(XmlAccessType.FIELD)
public final class EmailConfig extends BaseConfig {

    public static final String CONFIG_NAME = "EmailConfig";

    /**
     * 发件人邮箱
     */
    @XmlElement(required = true)
    private String smtpFromMail;

    /**
     * SMTP服务器地址
     */
    @XmlElement(required = true)
    private String smtpHost;

    /**
     * SMTP服务器端口
     */
    @XmlElement(required = true)
    private Integer smtpPort=25;

    /**
     * SMTP用户名
     */
    @XmlElement(required = true)
    private String smtpUsername;

    /**
     * SMTP密码
     */
    @XmlElement(required = true)
    private String smtpPassword;

    
    public String getSmtpFromMail() {
        return smtpFromMail;
    }

    public void setSmtpFromMail(String smtpFromMail) {
        this.smtpFromMail = smtpFromMail;
    }

    public String getSmtpHost() {
        return smtpHost;
    }

    public void setSmtpHost(String smtpHost) {
        this.smtpHost = smtpHost;
    }

    public Integer getSmtpPort() {
        return smtpPort;
    }

    public void setSmtpPort(Integer smtpPort) {
        this.smtpPort = smtpPort;
    }

    public String getSmtpUsername() {
        return smtpUsername;
    }

    public void setSmtpUsername(String smtpUsername) {
        this.smtpUsername = smtpUsername;
    }

    public String getSmtpPassword() {
        return smtpPassword;
    }

    public void setSmtpPassword(String smtpPassword) {
        this.smtpPassword = smtpPassword;
    }

    @Override
    public String toString() {
        return "EmailConfig{" + "smtpFromMail=" + smtpFromMail + ", smtpHost=" + smtpHost + ", smtpPort=" + smtpPort + ", smtpUsername=" + smtpUsername + ", smtpPassword=" + smtpPassword + '}';
    }
    
}
