/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.commons.enums.CommentsType;
import com.aboutdata.dao.CommentsDao;
import com.aboutdata.domain.Comments;
import com.aboutdata.service.CommentsService;
import java.util.List;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Administrator
 * @date 2016-1-6 13:16:51
 * @version V1.0
 */
@Service
public class CommentsServiceImpl implements CommentsService {

    public static Logger logger = LoggerFactory.getLogger(CommentsServiceImpl.class);

    @Resource
    private CommentsDao commentsDao;

    @Override
    public List<Comments> findByTypeAndEntityId(CommentsType type, String entityId) {
        List<Comments> list = commentsDao.findByTypeAndEntityId(type, entityId);
        return list;
    }

    @Override
    public Page<Comments> findByTypeAndEntityId(CommentsType type, String entityId, Pageable pageable) {
        Page<Comments> page = commentsDao.findByTypeAndEntityId(type, entityId, pageable);
        return page;
    }

    @Override
    public List<Comments> findByUserId(String userId) {
        List<Comments> list = commentsDao.findByTypeAndEntityId(CommentsType.User, userId);
        return list;
    }

    @Override
    @Transactional
    public void save(Comments comments) {
        commentsDao.save(comments);
    }

}
