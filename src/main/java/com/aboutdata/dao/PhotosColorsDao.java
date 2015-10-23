package com.aboutdata.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aboutdata.domain.PhotosColors;

/**
 * 壁纸主要颜色
 * 
 * @author Administrator
 *
 */
@Repository
public interface PhotosColorsDao extends JpaRepository<PhotosColors, String> {

}
