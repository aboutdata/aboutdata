package com.aboutdata.service.bean;

import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.dto.PhotosDTO;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.TagService;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author youyou
 */
@Service("photosServiceImpl")
public class PhotosServiceImpl implements PhotosService {

    Logger logger = LoggerFactory.getLogger(PhotosServiceImpl.class);

    @Resource
    private PhotosDao photosDao;

    @Resource
    private TagService tagService;

    @Override
    @Transactional
    public Photos get(String id) {
        Photos photo = photosDao.findOne(id);

        return photo;
    }

    @Override
    public Page<PhotosModel> findByStatus(PhotoStatus status, Pageable pageable) {

        Page<Photos> page = photosDao.findByStatus(status, pageable);

        List<Photos> photos = page.getContent();

        List<PhotosModel> models = PhotosDTO.getPhotosModeslDTO(photos);
        Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, page.getTotalElements());

        return result;
    }

    @Override
    public Page<PhotosModel> findByStatusList(List<PhotoStatus> statusList, Pageable pageable) {
        Page<Photos> page = photosDao.findByStatusIn(statusList, pageable);

        List<Photos> photos = page.getContent();

        List<PhotosModel> models = PhotosDTO.getPhotosModeslDTO(photos);
        Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, page.getTotalElements());

        return result;
    }

    @Override
    public Page<PhotosModel> find(Pageable pageable) {
        Page<Photos> page = photosDao.findAll(pageable);
        List<Photos> photos = page.getContent();

        List<PhotosModel> models = PhotosDTO.getPhotosModeslDTO(photos);
        Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, page.getTotalElements());

        return result;
    }

    @Override
    public List<Photos> findPhotosAndTags() {
        List<Photos> all = photosDao.findAll();
        return all;
    }

    @Override
    @Transactional
    public void addTags(String id, String tagString) {
        Set<Tag> tags = tagService.getTagsFromString(tagString);
        Photos photos = photosDao.findOne(id);
        logger.info("top10  tags {}", tags.size());
        photos.setTags(tags);
        photosDao.save(photos);
    }

    @Override
    public List<Photos> findByAlbumId(String albumId) {
        return photosDao.findByAlbumId(albumId);
    }

    @Override
    public PhotosModel findById(String id) {
        Photos photos = photosDao.findOne(id);
        return PhotosDTO.getPhotosModelDTO(photos);
    }

    @Override
    @Transactional
    public Photos create(Photos photos) {

        return photosDao.save(photos);
    }

    /**
     * @ 批准通过
     * @ 批准通过 定时任务会马上创建索引
     * @param id
     * @param description
     */
    @Override
    @Transactional
    public void approve(String id, String description) {
        Photos photos = photosDao.findOne(id);
        photos.setStatus(PhotoStatus.APPROVED);
        photos.setDescription(description);
    }

    @Override
    @Transactional
    public int makrStatus(String id, PhotoStatus status) {
        return photosDao.makrStatus(id, status);
    }

    @Override
    public List<PhotosModel> random() {

        List<String> ids = photosDao.findAllIds();
        /**
         * *
         * 1 打乱顺序 造成随机效果 也要分页 2 分頁每次不是同一個隨機序列 每次分頁都是已給新的隨機隊列
         *
         */
        Collections.shuffle(ids);
        //取出24条记录
        List<Photos> photos = photosDao.findByIds(ids.subList(0, 24));

        List<PhotosModel> result = PhotosDTO.getPhotosModeslDTO(photos);

        return result;
    }

    /**
     * 查看详情 并且把查看次数+1
     *
     * @param id
     * @return
     */
    @Override
    @Transactional
    public PhotosModel views(String id) {
        Photos photos = photosDao.findOne(id);
        //如果访问一次 就把该访问次数加1
        photos.setOrder(photos.getOrder() + 1);
        return PhotosDTO.getPhotosModelDTO(photos);
    }

    @Override
    public long count() {
        return photosDao.count();
    }

}
