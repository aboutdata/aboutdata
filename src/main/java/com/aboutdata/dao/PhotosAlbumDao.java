/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.dao;

import com.aboutdata.domain.PhotosAlbum;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author youyou
 */
@Repository
public interface PhotosAlbumDao extends JpaRepository<PhotosAlbum, Long> {

    /**
     * 查找顶级分类
     *
     * @return 顶级分类
     */
    @Query("select photosAlbum from PhotosAlbum photosAlbum where photosAlbum.parent is null order by photosAlbum.order asc")
    List<PhotosAlbum> findRoots();

    /**
     * 查找上级分类
     *
     * @param ids
     * @return 上级文章分类
     */
    @Query("select photosAlbum from PhotosAlbum photosAlbum where photosAlbum.id in (:ids) order by photosAlbum.grade asc")
    List<PhotosAlbum> findParents(String ids);

    /**
     * 查找下级分类
     *
     * @param parnetId
     * @return 下级文章分类
     */
    @Query("select photosAlbum from PhotosAlbum photosAlbum where photosAlbum.treePath like :treePath order by photosAlbum.order asc")
    List<PhotosAlbum> findChildren(String parnetId);

}
