/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.Tag;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.TagService;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
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

    public List<Photos> findTop50() {
        return photosDao.findAll();
    }

    public List<Photos> findTop10() {

        int pageNow = 1;
        int pageSize = 10;

        Pageable pageable = new PageRequest((pageNow - 1) * pageSize, pageSize);
        Page<Photos> page = photosDao.findAll(pageable);

        for (Photos p : page.getContent()) {
            logger.info("top10 {}", p);
        }

        return page.getContent();
    }

    @Override
    public List<Photos> findPhotosAndTags() {
        List<Photos> all = photosDao.findAll();
        return all;
    }

    @Override
    public void addTags(String id, String tagString) {
        Set<Tag> tags = tagService.getTagsFromString(tagString);
        Photos photos = photosDao.findOne(id);
        photos.setTags(tags);
        photosDao.save(photos);
    }

    @Override
    public List<Photos> findByAlbumId(String albumId) {
        return photosDao.findByAlbumId(albumId);
    }

    @Override
    public Photos findById(String id) {
        return photosDao.findOne(id);
    }

    @Override
    @Transactional
    public Photos create(Photos photos) {

        return photosDao.save(photos);
    }

}
