/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.MemberInfomationDao;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.MemberInfomation;
import com.aboutdata.service.MemberInfomationService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
 * 会员附加信息
 *
 * @author Administrator
 */
@Service
public class MemberInfomationServiceImpl implements MemberInfomationService {

    @Resource
    private MemberInfomationDao memberInfomationDao;

    @Override
    public MemberInfomation findByMember(Member member) {
        return memberInfomationDao.findByMember(member);
    }

    @Override
    public MemberInfomation create(MemberInfomation minfo) {
        return memberInfomationDao.save(minfo);
    }

    @Override
    public MemberInfomation update(MemberInfomation minfo) {
        return memberInfomationDao.save(minfo);
    }
}
