/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.model.PhotosModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 *
 * @author Administrator
 */
public interface SearchService {

    /**
     * 创建索引
     */
    public void buildAll();

    /**
     * 搜索
     *
     * @param keyword
     * @param pageable
     * @return
     */
    public Page<PhotosModel> search(String keyword, Pageable pageable);
}
