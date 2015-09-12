/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.wallheaven;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.service.PhotosService;
import java.io.IOException;
import javax.annotation.Resource;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

/**
 * 功能:wallhaven图片抓取
 * @author youyou
 */
@Component
public class WallhavenJobCrawler {

    @Resource
    private PhotosService photosService;

    public void crawl(int page) {
        String url = "http://alpha.wallhaven.cc/latest?page=" + page;
        Document doc;
        try {
            doc = Jsoup.connect(url).userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36").get();
            Elements links = doc.select("section ul li");
            for (Element li : links) {
                Element figure = li.child(0);
                //跳转到到详情页面去 然后读取图片解析信息
                parserProperties(figure.attr("data-wallpaper-id"));
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

        Document doc = Jsoup.connect(url).userAgent("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36").get();

        Photos photos = new Photos();

        photos.setWallhaven("wallhaven");
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
        photos.setMedium(image.attr("src"));
        photos.setLarge(image.attr("src"));
        photos.setSource(image.attr("src"));
        photosService.create(photos);

        for (Element tag : tags) {
            // print("标签 : %s", tag.text());
        }

    }
}
