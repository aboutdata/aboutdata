/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.commons.enums.Oauth2Type;
import com.aboutdata.dao.MemberDao;
import com.aboutdata.dao.OpenAuth2Dao;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.OpenAuth2;
import com.aboutdata.service.OpenAuth2Service;
import com.github.scribejava.apis.GitHubApi;
import com.github.scribejava.apis.SinaWeiboApi20;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.oauth.OAuthService;
import java.util.Random;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @ 第三方登陆
 * @开放授权登录
 * @author Administrator
 */
@Service
public class OpenAuth2ServiceImpl implements OpenAuth2Service {

    Logger logger = LoggerFactory.getLogger(OpenAuth2ServiceImpl.class);

    @Resource
    private OpenAuth2Dao openAuth2Dao;

    @Override
    @Transactional
    public OpenAuth2 save(OpenAuth2 openAuth2) {
        return openAuth2Dao.save(openAuth2);
    }

    @Override
    public OpenAuth2 findByOauthIdAndType(String oauthId, Oauth2Type type) {
        return openAuth2Dao.findByOauthIdAndType(oauthId, type);
    }

    /*=======各大平台登录服务====================================================================*/
    @Override
    public OAuthService getSinaWeiboService() {
        // Replace these with your own api key and secret
        String apiKey = "2072911734";
        String apiSecret = "30f2c2b0a6cd45539d57a8a4c8fbcb50";
        OAuthService service = new ServiceBuilder()
                .provider(SinaWeiboApi20.class)
                .apiKey(apiKey)
                .apiSecret(apiSecret)
                .callback("http://aboutdata.localhost:8080/oauth/sina")
                .build();

        return service;
    }

    /**
     * github
     *
     * @return
     */
    @Override
    public OAuthService getGithubService() {
        final String clientId = "e5071c636fc233d8a8c6";
        final String clientSecret = "0fb4c03145b812596cc05bff459678affdc87ba3";
        final String secretState = "secret" + new Random().nextInt(999_999);

        final OAuthService service = new ServiceBuilder()
                .provider(GitHubApi.class)
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .state(secretState)
                .callback("http://localhost:8080/oauth_callback/")
                .build();
        return service;
    }
}
