/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao.bean;

import com.aboutdata.dao.ImageInfoDao;
import com.aboutdata.domain.ImageInfo;
import org.springframework.stereotype.Repository;

/**
 *
 * @author youyou
 */
@Repository("imageInfoDaoImpl")
public class ImageInfoDaoImpl extends BaseDaoImpl<ImageInfo, Long> implements ImageInfoDao {

}
