/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.commons.enums.PhotosRequestStatus;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosRequest;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 壁纸上传申请
 *
 * @author Administrator
 */
@Repository
public interface PhotosRequestDao extends JpaRepository<PhotosRequest, String> {

    /**
     * Modifying 跟新语句 必须加上
     *
     * @param id
     * @param status
     * @return
     */
    @Modifying
    @Query(value = "update PhotosRequest request set request.status =:status where request.id=:id")
    public int makrStatus(@Param("id") String id, @Param("status") PhotosRequestStatus status);

    /**
     * 根据状态查询
     *
     * @param status
     * @param pageable
     * @return
     */
    public Page<PhotosRequest> findByStatus(@Param("status") PhotosRequestStatus status, Pageable pageable);

    /**
     * 多状态查询
     *
     * @param statusList
     * @param pageable
     * @return
     */
    public Page<PhotosRequest> findByStatusIn(@Param("status") List<PhotosRequestStatus> statusList, Pageable pageable);
}
