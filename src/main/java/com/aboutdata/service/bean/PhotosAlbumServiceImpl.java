/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.PhotosAlbumDao;
import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.PhotosAlbumService;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author youyou
 */
@Service("photosAlbumService")
public class PhotosAlbumServiceImpl implements PhotosAlbumService {

    Logger logger = LoggerFactory.getLogger(PhotosServiceImpl.class);

    @Resource
    private PhotosAlbumDao photosAlbumDao;

    @Override
    @Transactional
    public List<PhotosAlbum> findRoots() {
        List<PhotosAlbum> photosAlbums = photosAlbumDao.findRoots();
        for (PhotosAlbum photosAlbum : photosAlbums) {
            Hibernate.initialize(photosAlbum.getChildren());
            Hibernate.initialize(photosAlbum.getParent());
        }
        return photosAlbums;
    }

}
