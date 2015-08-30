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
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author youyou
 */
@Repository
public interface PhotosAlbumDao extends JpaRepository<PhotosAlbum, String> {

    /**
     * 查找顶级分类
     *
     * @return 顶级分类
     */
    @Query("select photosAlbum from PhotosAlbum photosAlbum where photosAlbum.parentId is null order by photosAlbum.order asc")
    List<PhotosAlbum> findRoots();

    @Query("select photosAlbum from PhotosAlbum photosAlbum where photosAlbum.parentId is null and photosAlbum.member.id=:memberId order by photosAlbum.order asc")
    List<PhotosAlbum> findRootsByMember(@Param("memberId") String memberId);

    /**
     * 查找上级分类
     *
     * @param parentId
     * @return 上级文章分类
     */
    @Query("select photosAlbum from PhotosAlbum photosAlbum where photosAlbum.parentId  = :parentId order by photosAlbum.grade asc")
    List<PhotosAlbum> findByParent(@Param("parentId") long parentId);

}
