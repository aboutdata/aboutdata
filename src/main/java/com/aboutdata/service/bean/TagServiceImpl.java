/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.TagDao;
import com.aboutdata.domain.Tag;
import com.aboutdata.service.TagService;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
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

    @Override
    public Tag getByName(String name) {
        return tagDao.getByName(name);
    }

    @Override
    public Set<Tag> getTagsFromString(String tagString) {
        Set<Tag> result = new HashSet<Tag>();
        for (String tagName : tagString.split(",")) {
            tagName = tagName.replaceAll("\\s+", "");
            Tag tagObj = this.getByName(tagName);	// get persistent object
            if (tagObj == null) {
                //主要控制不能随便写标签 ,如果是自己的写的标签 系统将不保存
                 //tagObj = new Tag();
                 //tagObj.setName(tagName);
            } else {
                result.add(tagObj);
            }
            
        }
        return result;
    }

    /**
     * 用于用户查询标签时使用
     * @param name
     * @return
     */
    @Override
    public List<String> findTagStringByName(String name) {
        List<String> tagString = new ArrayList<>();

        List<Tag> tags = tagDao.findTagStringByName(name);
        for (Tag tag : tags) {
            tagString.add(tag.getName());
        }
        return tagString;
    }
}
