/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.TagDao;
import com.aboutdata.domain.Tag;
import com.aboutdata.service.TagService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service("tagServiceImpl")
public class TagServiceImpl implements TagService {

    @Resource
    private TagDao tagDao;

    @Override
    public Tag create(Tag tag) {
        return tagDao.save(tag);
    }
}
