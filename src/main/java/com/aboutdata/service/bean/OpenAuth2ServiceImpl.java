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
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 第三方登陆
 *
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
    
}
