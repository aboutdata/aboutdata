/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule.task;

import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.Tag;
import com.aboutdata.service.PhotosService;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 构建索引任务
 *
 * @author Administrator
 */
public class BuildIndexTask implements Runnable {

    Logger logger = LoggerFactory.getLogger(BuildIndexTask.class);

    private final Photos photo;
    private final HttpSolrServer solrServer;
    private final PhotosService photosService;

    public BuildIndexTask(Photos photo, PhotosService photosService, HttpSolrServer solrServer) {
        this.photo = photo;
        this.photosService = photosService;
        this.solrServer = solrServer;
    }

    @Override
    public void run() {
        logger.info("photo {}", photo.getId());
        SolrInputDocument doc = new SolrInputDocument();

        doc.addField("id", photo.getId());
        doc.addField("title", photo.getTitle());

        StringBuilder tags = new StringBuilder();
        //拼装tags 便于搜索
        if (photo.getTags() != null & photo.getTags().size() > 0) {
            for (Tag tag : photo.getTags()) {
                tags.append(tag.getName()).append(",");
            }
            //删除最后一个逗号
            tags.deleteCharAt(tags.length() - 1);
            logger.debug("solr tags {}", tags.toString());
            doc.addField("tags", tags.toString());
        } else {
            //没有标签 则显示空
            doc.addField("tags", "");
        }

        doc.addField("large", photo.getLarge());
        doc.addField("medium", photo.getMedium());
        doc.addField("thumbnail", photo.getThumbnail());
        doc.addField("source", photo.getSource());
        doc.addField("member_id", photo.getMember().getId());
        doc.addField("member_name", photo.getMember().getUsername());
        doc.addField("wallhaven", photo.getWallhaven());
        doc.addField("create_date", photo.getCreateDate());
        doc.addField("modify_date", photo.getModifyDate());
        try {
            solrServer.add(doc);
            solrServer.commit();
            //已建立索引
            photosService.makrStatus(photo.getId(), PhotoStatus.INDEXED);
        } catch (Exception ex) {
            logger.error("build index error {}", ex);
        }
    }

}
