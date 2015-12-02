package com.aboutdata.service.bean;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.annotation.Resource;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.aboutdata.dao.PhotosRequestDao;
import com.aboutdata.domain.PhotosRequest;
import com.aboutdata.model.PhotosRequestModel;
import com.aboutdata.model.dto.PhotosRequestDTO;
import com.aboutdata.service.PhotosRequestService;
import com.aboutdata.commons.enums.PhotosRequestStatus;
import com.aboutdata.domain.Photos;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.dto.PhotosDTO;
import org.springframework.data.domain.PageImpl;
import org.springframework.transaction.annotation.Transactional;

/**
 * 图片上传申请
 *
 * @author Administrator
 */
@Service
public class PhotosRequestServiceImpl implements PhotosRequestService {

    private final static Logger logger = LoggerFactory.getLogger(PhotosRequestServiceImpl.class);

    @Resource
    private PhotosRequestDao photosRequestDao;

    @Override
    public PhotosRequestModel get(String id) {
        PhotosRequest request = photosRequestDao.findOne(id);
        return PhotosRequestDTO.getPhotosRequestModelDTO(request);
    }

    @Override
    public Page<PhotosRequestModel> find(Pageable pageable) {
        Page<PhotosRequest> page = photosRequestDao.findAll(pageable);

        List<PhotosRequest> content = page.getContent();

        List<PhotosRequestModel> models = PhotosRequestDTO.getPhotosRequestModeslDTO(content);
        Page<PhotosRequestModel> result = new PageImpl<PhotosRequestModel>(models, pageable, page.getTotalElements());
        return result;
    }

    @Override
    @Transactional
    public PhotosRequestModel create(PhotosRequest request) {
        PhotosRequest entity = photosRequestDao.save(request);
        return PhotosRequestDTO.getPhotosRequestModelDTO(entity);
    }

    @Override
    @Transactional
    public int makrStatus(String id, PhotosRequestStatus status) {
        return photosRequestDao.makrStatus(id, status);
    }

    @Override
    public Page<PhotosRequestModel> findByStatus(PhotosRequestStatus status, Pageable pageable) {
        Page<PhotosRequest> page = photosRequestDao.findByStatus(status, pageable);

        List<PhotosRequest> content = page.getContent();

        List<PhotosRequestModel> models = PhotosRequestDTO.getPhotosRequestModeslDTO(content);
        Page<PhotosRequestModel> result = new PageImpl<PhotosRequestModel>(models, pageable, page.getTotalElements());
        return result;
    }

    @Override
    public Page<PhotosRequestModel> findByStatusList(List<PhotosRequestStatus> statusList, Pageable pageable) {
        Page<PhotosRequest> page = photosRequestDao.findByStatusIn(statusList, pageable);

        List<PhotosRequest> content = page.getContent();

        List<PhotosRequestModel> models = PhotosRequestDTO.getPhotosRequestModeslDTO(content);
        Page<PhotosRequestModel> result = new PageImpl<PhotosRequestModel>(models, pageable, page.getTotalElements());

        return result;
    }

}
