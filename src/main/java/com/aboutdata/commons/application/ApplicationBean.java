/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.application;

import com.aboutdata.commons.config.Features;
import com.aboutdata.commons.config.SystemConfig;
import com.aboutdata.domain.Member;
import com.aboutdata.service.ConfigService;
import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 *
 * @author youyou
 */
@Component
@Scope("singleton")
public class ApplicationBean {

    @InjectLogger
    private Logger logger;

    private Features features;

    private SystemConfig systemConfig;

    @Resource
    private MemberService memberService;

    @Resource
    private ConfigService configService;

    public Member getCurrentUser() {
        return memberService.getCurrent();
    }

    /**
     * 配置新开发功能是否可用线上
     *
     * @return
     */
    public Features getFeatures() {
        return this.getSystemConfig().getFeatures();
    }

    public SystemConfig getSystemConfig() {
        return configService.getSystemConfig();
    }

}
