/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.domain.Photos;
import java.io.File;
import org.springframework.web.multipart.MultipartFile;

/**
 * 处理图片 如缩放、裁剪等
 *
 * @author Administrator
 */
public interface ImageGraphicsService {

    /**
     *
     * @param photos
     * @param file
     */
    public void build(Photos photos, MultipartFile file);

    /**
     * 头像不同尺寸裁剪
     *
     * @param Imagefile
     */
    public void buildAvatar(String memberID, MultipartFile Imagefile);
}
