/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.domain.Photos;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 *
 * @author youyou
 */
public interface PhotosService {

    public Photos get(String id);

    public Page<Photos> find(Pageable pageable);

    public List<Photos> findTop10();

    public List<Photos> findPhotosAndTags();

    public void addTags(String id, String tagString);

    public List<Photos> findByAlbumId(String albumId);

    public Photos findById(String id);

    public Photos create(Photos photos);

}
