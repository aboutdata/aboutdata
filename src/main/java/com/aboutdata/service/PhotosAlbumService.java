/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.domain.PhotosAlbum;
import java.util.List;

/**
 *
 * @author youyou
 */
public interface PhotosAlbumService {

    /**
     * 查找顶级分类
     *
     * @return 顶级分类
     */
    public List<PhotosAlbum> findRoots();

    /**
     * 根据父类超找
     *
     * @param ParentId
     * @return
     */
    public List<PhotosAlbum> getByParent(long ParentId);

    /**
     *
     * @param album
     */
    public void create(PhotosAlbum album);

}
