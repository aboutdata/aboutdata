/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.commons.enums.PhotoStatus;
import java.util.List;
import com.aboutdata.domain.Photos;
import com.aboutdata.model.PhotosModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

/**
 *
 * @author youyou
 */
@Repository
public interface PhotosDao extends JpaRepository<Photos, String> {

    @Query("select photos from Photos photos where photos.album.id =:albumId order by photos.order asc")
    public List<Photos> findByAlbumId(@Param("albumId") String albumId);

    @Modifying
    @Query(value = "update Photos photos set photos.status =:status where photos.id=:id")
    public int makrStatus(@Param("id") String id, @Param("status") PhotoStatus status);

    // @Query(value = "select photos from Photos photos where photos.status=:status order by photos.order asc ")
    public Page<Photos> findByStatus(@Param("status") PhotoStatus status, Pageable pageable);

//    @Query(value = "select count(photos) from Photos photos where photos.status=:status")
//    public Long countByStatus(@Param("status") PhotoStatus status);
}
