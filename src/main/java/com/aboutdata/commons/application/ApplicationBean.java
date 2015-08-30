/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.application;

import com.aboutdata.domain.Member;
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

    private final Logger logger = LoggerFactory.getLogger(getClass());
    @Resource
    private MemberService memberService;

    public Member getCurrentUser() {
        return memberService.getCurrent();
    }
}
