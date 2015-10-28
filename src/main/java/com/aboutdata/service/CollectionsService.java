/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.domain.Collections;
import java.util.List;

/**
 * 收藏夹业务接口
 *
 * @author Administrator
 */
public interface CollectionsService {

    /**
     * 获取用户的收藏夹
     *
     * @param memberId
     * @return
     */
    public List<Collections> findByMember(String memberId);

    /**
     * 获取默认收藏夹
     *
     * @param memberId
     * @return
     */
    public Collections findDefaultByMember(String memberId);

    /**
     * 创建收藏夹
     *
     * @param collections
     */
    public void create(Collections collections);

    /**
     * 添加到收藏夹
     *
     * @param photoId
     * @param collectionsId
     */
    public void addFavorite(String photoId, String collectionsId);
}
