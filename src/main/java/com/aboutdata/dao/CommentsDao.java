/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.commons.enums.CommentsType;
import com.aboutdata.domain.Comments;
import com.aboutdata.domain.Photos;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @author Administrator
 * @date 2016-1-6 12:01:59
 * @version V1.0
 */
@Repository
public interface CommentsDao extends JpaRepository<Comments, String> {

    /**
     * 多状态查询
     *
     * @param type
     * @param entityId
     * @return
     */
    public List<Comments> findByTypeAndEntityId(@Param("type") CommentsType type, @Param("entityId") String entityId);

    /**
     * 分页
     *
     * @param type
     * @param entityId
     * @param pageable
     * @return
     */
    public Page<Comments> findByTypeAndEntityId(@Param("type") CommentsType type, @Param("entityId") String entityId, Pageable pageable);

    /**
     * 分页
     *
     * @param type
     * @param pageable
     * @return
     */
    public Page<Comments> findByType(@Param("type") CommentsType type, Pageable pageable);

}
