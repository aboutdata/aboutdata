/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.ImageInfoDao;
import com.aboutdata.domain.ImageInfo;
import com.aboutdata.service.ImageInfoService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
 *
 * @author youyou
 */
@Service("ImageInfoServiceImpl")
public class ImageInfoServiceImpl extends BaseServiceImpl<ImageInfo, Long> implements ImageInfoService {

    @Resource(name = "imageInfoDaoImpl")
    private ImageInfoDao imageInfoDao;

    @Resource(name = "imageInfoDaoImpl")
    public void setBaseDao(ImageInfoDao imageInfoDao) {
        super.setBaseDao(imageInfoDao);
    }
}
