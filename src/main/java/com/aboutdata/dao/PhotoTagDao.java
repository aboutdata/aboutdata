/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.domain.PhotoTag;
import com.aboutdata.domain.Tag;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public interface PhotoTagDao extends JpaRepository<PhotoTag, String> {

//    @Query("select area from Area area where area.parent is null order by area.order asc")
//    List<Area> findRoots();
//    根据图片id获取图片标签 
//    @Query("SELECT tag FROM Tag tag LEFT JOIN PhotoTag ptag ON tag.id = ptag.tag_id WHERE ptag.photo_id = :photoId")
//    public List<Tag> findByPhotoId(@Param("photoId") long photoId);
}
