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
import com.aboutdata.service.ConfigService;
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
    private ConfigService configService;

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
        final String apiKey = configService.getOpenAuth2Config().getSinaWeiboClient().getApiKey();
        final String apiSecret = configService.getOpenAuth2Config().getSinaWeiboClient().getApiSecret();
        final String callback = configService.getOpenAuth2Config().getSinaWeiboClient().getCallback();

        final OAuthService service = new ServiceBuilder()
                .provider(SinaWeiboApi20.class)
                .apiKey(apiKey)
                .apiSecret(apiSecret)
                .callback(callback)
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
        final String apiKey = configService.getOpenAuth2Config().getGithubClient().getApiKey();
        final String apiSecret = configService.getOpenAuth2Config().getGithubClient().getApiSecret();
        final String callback = configService.getOpenAuth2Config().getGithubClient().getCallback();

        final String secretState = "secret" + new Random().nextInt(999_999);

        final OAuthService service = new ServiceBuilder()
                .provider(GitHubApi.class)
                .apiKey(apiKey)
                .apiSecret(apiSecret)
                .state(secretState)
                .callback(callback)
                .build();
        return service;
    }
}
