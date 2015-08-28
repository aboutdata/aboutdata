/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.domain.Photos;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.StorageService;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.annotation.Resource;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Administrator
 */
@Service("imageGraphicsServiceImpl")
public class ImageGraphicsServiceImpl implements ImageGraphicsService {

    @Resource
    private PhotosService photosService;

    @Resource
    private StorageService storageService;

    @Override
    public void build(Photos photos, MultipartFile multipartFile) {
        if (multipartFile != null && !multipartFile.isEmpty()) {
            try {
                File tempFile = new File(System.getProperty("java.io.tmpdir") + "/upload_" + multipartFile.getOriginalFilename());
                if (!tempFile.getParentFile().exists()) {
                    tempFile.getParentFile().mkdirs();
                }
                multipartFile.transferTo(tempFile);
//                addTask(sourcePath, largePath, mediumPath, thumbnailPath, tempFile, multipartFile.getContentType());
                String path = storageService.upload(tempFile);

                photos.setThumbnail(path);
                photos.setMedium(path);
                photos.setLarge(path);
                photos.setSource(path);
                
                photosService.create(photos);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
