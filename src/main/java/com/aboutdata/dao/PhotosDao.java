/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.domain.Photos;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author youyou
 */
@Repository
public interface PhotosDao extends JpaRepository<Photos, Long> {

    @Query("select photos from Photos photos where photos.albumId =:albumId order by photos.order asc")
    public List<Photos> findByAlbumId(@Param("albumId")long albumId);

}
