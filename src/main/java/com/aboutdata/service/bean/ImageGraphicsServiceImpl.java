/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.commons.application.ApplicationBean;
import com.aboutdata.domain.Photos;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.StorageService;
import com.aboutdata.utils.EasyImage;
import java.io.File;
import java.io.IOException;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Administrator
 */
@Service("imageGraphicsServiceImpl")
public class ImageGraphicsServiceImpl implements ImageGraphicsService {

    Logger logger = LoggerFactory.getLogger(ImageGraphicsServiceImpl.class);
    @Resource
    private PhotosService photosService;

    @Resource
    private StorageService storageService;

    @Resource
    private ApplicationBean appBean;

    @Override
    public void build(Photos photos, MultipartFile multipartFile) {
        if (multipartFile != null && !multipartFile.isEmpty()) {
            try {
                File tempFile = new File(System.getProperty("java.io.tmpdir") + "/upload_" + multipartFile.getOriginalFilename());
                if (!tempFile.getParentFile().exists()) {
                    tempFile.getParentFile().mkdirs();
                }
                multipartFile.transferTo(tempFile);
                //addTask(sourcePath, largePath, mediumPath, thumbnailPath, tempFile, multipartFile.getContentType());
                String path = storageService.upload(tempFile);

                //以前旧代码 引用wallhaven的地址
                //Random r1 = new Random();
                //int num = r1.nextInt(19) + 1;
                //String thumbnail = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/thumbs/thumb" + num + ".jpg";
                //String medium = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/images/image" + num + ".jpg";
                /**
                 * 使用EasyImage裁剪图片生成缩略图
                 */
                EasyImage image = new EasyImage(tempFile);
                float width = image.getWidth();
                //根据百分比裁剪
                int resize = (int) ((200 / width) * 100);
                image.resize(resize);
                //先保存到临时目录
                image.saveAs("/tmp/" + tempFile.getName());
                File tempThumbnail = new File("/tmp/" + tempFile.getName());
                String thumbnail = storageService.upload(tempThumbnail);
                //上传完毕后删除
                tempThumbnail.delete();

                photos.setThumbnail(thumbnail);
                photos.setMedium(path);
                photos.setLarge(path);
                photos.setSource(path);
                photos.setStorageHost(appBean.getSystemConfig().getDefaultStorageHost());
                photosService.create(photos);
            } catch (IOException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * *
     * 头像不同尺寸裁剪
     *
     * @param memberID
     * @param multipartFile
     */
    @Override
    public void buildAvatar(String memberID, MultipartFile multipartFile) {
        try {
            //image/png  image/gif
            String type = multipartFile.getContentType().split("/")[1];
            //会员的ID.png 会员的ID-200.png 尺寸为200
            File destFile = new File("/var/avatars/" + memberID + "." + type);
            multipartFile.transferTo(destFile);

            EasyImage image = new EasyImage(destFile);
            float width = image.getWidth();
            //根据百分比裁剪 宽200
            int resize = (int) ((200 / width) * 100);
            image.resize(resize);
            //保存到/var/avatars/
            image.saveAs("/var/avatars/" + memberID + "-200" + "." + type);

        } catch (IOException | IllegalStateException ex) {
            logger.error("update user ({}) avatar failure,Image File name is ({}) ", memberID, multipartFile.getOriginalFilename());
            logger.error("{}", ex);
        }
    }

}
