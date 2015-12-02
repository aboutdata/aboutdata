/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import java.util.List;
import com.aboutdata.domain.PhotosRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import com.aboutdata.commons.enums.PhotosRequestStatus;
import com.aboutdata.model.PhotosRequestModel;

/**
 * 图片上传申请
 *
 * @
 * @author Administrator
 */
public interface PhotosRequestService {

    public PhotosRequestModel get(String id);

    public Page<PhotosRequestModel> find(Pageable pageable);

    public PhotosRequestModel create(PhotosRequest request);

    public int makrStatus(String id, PhotosRequestStatus status);

    public Page<PhotosRequestModel> findByStatus(PhotosRequestStatus status, Pageable pageable);

    public Page<PhotosRequestModel> findByStatusList(List<PhotosRequestStatus> statusList, Pageable pageable);
}
