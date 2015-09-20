/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.wallheaven;

import com.aboutdata.commons.application.ApplicationBean;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.StorageService;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import org.jsoup.Connection;
import org.jsoup.Connection.Response;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

/**
 * 功能:wallhaven图片抓取
 *
 * @author youyou
 */
@Component
public class WallhavenJobCrawler {

    @Resource
    private PhotosService photosService;

    @Resource
    private StorageService storageService;
    
     @Resource
    private ApplicationBean appBean;

    public void crawl(int page) {
        String url = "http://alpha.wallhaven.cc/latest?page=" + page;
        Document doc;
        try {
            Connection conn = Jsoup.connect(url).userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36");

            doc = conn.get();
            Elements links = doc.select("section ul li");
            for (Element li : links) {
                Element figure = li.child(0);
                String wallpaperId = figure.attr("data-wallpaper-id");
                //跳转到到详情页面去 然后读取图片解析信息
                //parserProperties(figure.attr("data-wallpaper-id"));
                String thumbnail = "http://alpha.wallhaven.cc/wallpapers/thumb/small/th-" + wallpaperId + ".jpg";
                String full = "http://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-" + wallpaperId + ".jpg";
                try {
                    boolean smallStatus = getImages(thumbnail, "/tmp/small" + wallpaperId + ".jpg");
                    boolean fullStatus = getImages(full, "/tmp/full" + wallpaperId + ".jpg");
                    //如果网络状态不是200就不需要保存了
                    if (smallStatus && fullStatus) {

                        File thumbnailFile = new File("/tmp/small" + wallpaperId + ".jpg");
                        String thumbnailPath = storageService.upload(thumbnailFile);
                        thumbnailFile.delete();
                        File sourceFile = new File("/tmp/full" + wallpaperId + ".jpg");
                        String sourceFilePath = storageService.upload(sourceFile);
                        sourceFile.delete();

                        Member m = new Member();
                        m.setId("1");
                        PhotosAlbum photosAlbum = new PhotosAlbum();
                        photosAlbum.setId("1");

                        Photos photos = new Photos();

                        
                        photos.setWallhaven(wallpaperId);
                        photos.setOrder(1);
                        photos.setTitle(wallpaperId);
                        photos.setMember(m);
                        photos.setAlbum(photosAlbum);
                        photos.setStorageHost(appBean.getSystemConfig().getDefaultStorageHost());
                        photos.setThumbnail(thumbnailPath);
                        photos.setMedium(thumbnailPath);
                        photos.setLarge(sourceFilePath);
                        photos.setSource(sourceFilePath);
                        photosService.create(photos);
                    }

                } catch (Exception ex) {
                    ex.printStackTrace();
                }

            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    public void parserProperties(String wallpaperId) throws IOException {
        System.out.println("wallpaperId " + wallpaperId);

        String url = "http://alpha.wallhaven.cc/wallpaper/" + wallpaperId;

        Member m = new Member();
        m.setId("1");
        PhotosAlbum photosAlbum = new PhotosAlbum();
        photosAlbum.setId("1");
        Connection conn = Jsoup.connect(url).userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36");

        if (conn.response().statusCode() == 200) {

        }

        Document doc = conn.get();

        Photos photos = new Photos();

        photos.setWallhaven(wallpaperId);
        photos.setOrder(1);
        photos.setTitle(wallpaperId);
        photos.setMember(m);
        photos.setAlbum(photosAlbum);

        Elements properties = doc.select("dl dt");
        Element image = doc.select("section img").get(0);
        Elements tags = doc.select("ul[id=tags] a");
        //wallHaven 的图片属性
        for (Element property : properties) {
            Element item = property.nextElementSibling();
            if (property.text().equals("Resolution")) {

                continue;
            }
            if (property.text().equals("Size")) {

                continue;
            }
            if (property.text().equals("Category")) {

                continue;
            }
            if (property.text().equals("Views")) {

                continue;
            }
        }
        try {
            //String thumbnail = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/thumbs/thumb" + num + ".jpg";
            //String medium = "http://themes.mediacreed.com/html/synergy/assets/media/galleries/image_gallery/images/image" + num + ".jpg";

            getImages(image.attr("src"), "/tmp/" + wallpaperId + "." + image.attr("src").split(".")[1]);

        } catch (Exception ex) {
            Logger.getLogger(WallhavenJobCrawler.class.getName()).log(Level.SEVERE, null, ex);
        }

        photos.setMedium(image.attr("src"));
        photos.setLarge(image.attr("src"));
        photos.setSource(image.attr("src"));
        photosService.create(photos);

        for (Element tag : tags) {
            // print("标签 : %s", tag.text());
        }

    }

    /**
     * @param urlPath 图片路径
     * @param fileName
     * @throws Exception
     */
    public boolean getImages(String urlPath, String fileName) throws Exception {

        Connection conn = Jsoup.connect(urlPath).userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36");
        Response response = conn.execute();
        System.out.println("urlPath: " + urlPath);
        System.out.println("conn.getResponseCode():  " + response.statusCode());
        if (response.statusCode() != 404) {
            byte[] data = response.bodyAsBytes();
            if (data.length > (1024 * 10)) {
                FileOutputStream outputStream = new FileOutputStream(fileName);
                outputStream.write(data);
                outputStream.close();
            }
            return true;
        }

        return false;
    }
}
