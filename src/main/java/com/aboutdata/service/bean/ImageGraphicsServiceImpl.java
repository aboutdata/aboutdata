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
import java.util.Random;
import javax.annotation.Resource;
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
//                String path = storageService.upload(tempFile);
                Random r1 = new Random();
                int num = r1.nextInt(19) + 1;
                String thumbnail = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/thumbs/thumb" + num + ".jpg";
                String medium = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/images/image" + num + ".jpg";

                photos.setThumbnail(thumbnail);
                photos.setMedium(medium);
                photos.setLarge(thumbnail);
                photos.setSource(thumbnail);

                photosService.create(photos);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
