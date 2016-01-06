/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.commons.enums.CommentsType;
import com.aboutdata.domain.Comments;
import com.aboutdata.service.bean.CommentsServiceImpl;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

/**
 * @author Administrator
 * @date 2016-1-6 13:16:12
 * @version V1.0
 */
public interface CommentsService {

    public List<Comments> findByUserId(String userId);

    public List<Comments> findByTypeAndEntityId(CommentsType type, String entityId);
    
    public Page<Comments> findByTypeAndEntityId(CommentsType type, String entityId,Pageable pageable);
    
    public void save(Comments comments);

}
