/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.commons.enums.Oauth2Type;
import com.aboutdata.domain.OpenAuth2;
import com.github.scribejava.core.oauth.OAuthService;

/**
 *
 * @author Administrator
 */
public interface OpenAuth2Service {

    public OpenAuth2 save(OpenAuth2 openAuth2);

    public OpenAuth2 findByOauthIdAndType(String oauthId, Oauth2Type type);

    //获取各大平台授权相关
    public OAuthService getSinaWeiboService();

    public OAuthService getGithubService();
}
