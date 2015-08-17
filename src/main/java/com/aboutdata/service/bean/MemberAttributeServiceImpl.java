package com.aboutdata.service.bean;

import com.aboutdata.dao.MemberAttributeDao;
import com.aboutdata.domain.MemberAttribute;
import com.aboutdata.service.MemberAttributeService;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service - 会员注册项
 *
 *
 *
 */
@Service("memberAttributeServiceImpl")
public class MemberAttributeServiceImpl implements MemberAttributeService {

    @Resource
    private MemberAttributeDao memberAttributeDao;

    @Transactional(readOnly = true)
    public List<MemberAttribute> findList() {
        return memberAttributeDao.findList();
    }

    @Transactional(readOnly = true)
    @Cacheable("memberAttribute")
    public List<MemberAttribute> findList(String cacheRegion) {
        return memberAttributeDao.findList();
    }
}
