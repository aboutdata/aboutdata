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
 * 第三方登录配置信息
 *
 * @author Administrator
 */
@XmlRootElement(name = "OpenAuth2Config")
@XmlAccessorType(XmlAccessType.FIELD)
public final class OpenAuth2Config extends BaseConfig {

    public static final String CONFIG_NAME = "OpenAuth2Config";
    /**
     * open.weibo 应用接入
     */
    @XmlElement(required = true)
    private OpenAuth2Client sinaWeiboClient;

    /**
     * github 应用接入
     */
    @XmlElement(required = true)
    private OpenAuth2Client githubClient;

    public OpenAuth2Client getSinaWeiboClient() {
        return sinaWeiboClient;
    }

    public void setSinaWeiboClient(OpenAuth2Client sinaWeiboClient) {
        this.sinaWeiboClient = sinaWeiboClient;
    }

    public OpenAuth2Client getGithubClient() {
        return githubClient;
    }

    public void setGithubClient(OpenAuth2Client githubClient) {
        this.githubClient = githubClient;
    }

    @Override
    public String toString() {
        return "OpenAuth2Config{" + "sinaWeiboClient=" + sinaWeiboClient + ", githubClient=" + githubClient + '}';
    }

    
}
