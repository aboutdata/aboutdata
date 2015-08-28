/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.domain.Photos;
import org.springframework.web.multipart.MultipartFile;

/**
 * 处理图片 如缩放、裁剪等
 * @author Administrator
 */
public interface ImageGraphicsService {

    public void build(Photos photos,MultipartFile file);
}
