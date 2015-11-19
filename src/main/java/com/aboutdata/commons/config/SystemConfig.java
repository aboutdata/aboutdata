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
 * @ 系统配置信息
 * @/var/Anhao/config中配置会覆盖下面默认值
 * @author aboutdata.me
 */
@XmlRootElement(name = "SystemConfig")
@XmlAccessorType(XmlAccessType.FIELD)
public final class SystemConfig extends BaseConfig {

    public static final String CONFIG_NAME = "SystemConfig";
    /**
     * *
     * 是否是开发者模式
     */
    @XmlElement(required = true)
    private boolean developMode = false;

    //后台用户开户默认密码，如果为null表示使用手机短信发送随机密码
    @XmlElement
    private String defaultPassword = "123456";

    @XmlElement
    private String siteUrl = "http://localhost:8080";
    //静态资源服务器(css js 等)
    @XmlElement
    private String assetsUrl = "http://assets.lockbur.com";

    @XmlElement
    private String solrServer = "http://localhost:9090/solr";

    @XmlElement
    private String defaultStorageHost = "http://aboutdata.me";

    /**
     * 各平台通用功能
     */
    @XmlElement(required = false)
    private Features features;

    //setter and geeter
    public boolean isDevelopMode() {
        return developMode;
    }

    public void setDevelopMode(boolean developMode) {
        this.developMode = developMode;
    }

    public String getDefaultPassword() {
        return defaultPassword;
    }

    public void setDefaultPassword(String defaultPassword) {
        this.defaultPassword = defaultPassword;
    }

    public Features getFeatures() {
        return features;
    }

    public void setFeatures(Features features) {
        this.features = features;
    }

    public String getDefaultStorageHost() {
        return defaultStorageHost;
    }

    public void setDefaultStorageHost(String defaultStorageHost) {
        this.defaultStorageHost = defaultStorageHost;
    }

    public String getSolrServer() {
        return solrServer;
    }

    public void setSolrServer(String solrServer) {
        this.solrServer = solrServer;
    }

    public String getAssetsUrl() {
        return assetsUrl;
    }

    public void setAssetsUrl(String assetsUrl) {
        this.assetsUrl = assetsUrl;
    }

    public String getSiteUrl() {
        return siteUrl;
    }

    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }

    @Override
    public String toString() {
        return "SystemConfig{" + "developMode=" + developMode + ", defaultPassword=" + defaultPassword + ", assetsUrl=" + assetsUrl + ", solrServer=" + solrServer + ", defaultStorageHost=" + defaultStorageHost + ", features=" + features + '}';
    }

}
