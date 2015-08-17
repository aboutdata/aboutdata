/*
 * 
 * 
 * 
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.AreaDao;
import com.aboutdata.domain.Area;
import com.aboutdata.service.AreaService;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Service - 地区
 *
 *
 *
 */
@Service("areaServiceImpl")
public class AreaServiceImpl implements AreaService {

    @Resource
    private AreaDao areaDao;

    @Transactional(readOnly = true)
    public List<Area> findRoots() {
        return areaDao.findRoots();
    }
}
