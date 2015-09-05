/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import java.util.List;
import com.aboutdata.domain.Photos;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author youyou
 */
@Repository
public interface PhotosDao extends JpaRepository<Photos, String> {

    @Query("select photos from Photos photos where photos.album.id =:albumId order by photos.order asc")
    public List<Photos> findByAlbumId(@Param("albumId") String albumId);

    //@Query("FROM Photos photos order by photos.order asc")
    //public Page<Photos> findByPage(Pageable pageable);

}
