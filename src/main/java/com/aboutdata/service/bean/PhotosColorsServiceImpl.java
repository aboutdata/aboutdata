/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.dao.PhotosColorsDao;
import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosColors;
import com.aboutdata.service.PhotosColorsService;
import java.util.ArrayList;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.io.File;
import java.io.IOException;
import java.util.List;
import me.croma.image.AWTImage;
import me.croma.image.Color;
import me.croma.image.ColorPicker;
import me.croma.image.Image;
import me.croma.image.KMeansColorPicker;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 * 图片颜色截取
 *
 * @author Administrator
 */
@Service("photosColorsServiceImpl")
public class PhotosColorsServiceImpl implements PhotosColorsService {

    Logger logger = LoggerFactory.getLogger(PhotosColorsServiceImpl.class);

    @Resource
    private PhotosDao photosDao;

    @Resource
    private PhotosColorsDao photosColorsDao;

    @Override
    @Transactional
    public void generateColors(String photosID) {
        try {
            File file = new File("D:\\workspace\\GitHub\\croma\\images\\lockbur-com.jpg");
            Image img = new AWTImage(file);

            ColorPicker km = new KMeansColorPicker();
            // ColorPicker km = new DBScanColorPicker();
            //截取算法不一样
            // ColorPicker km = new MedianCutColorPicker();

            //6 取出6种颜色
            List<Color> list = km.getUsefulColors(img, 6);
            Photos photos = new Photos();
            photos.setId(photosID);
            for (Color c : list) {
                PhotosColors colors = new PhotosColors();
                colors.setBlue(c.getBlue());
                colors.setGreen(c.getGreen());
                colors.setRed(c.getRed());
                colors.setColor(c.toHexString());

                colors.setPhotos(photos);
                photosColorsDao.save(colors);
            }
        } catch (IOException ex) {
            logger.error("cut images color error inf :{}", ex);
        }

    }
}
