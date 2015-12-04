/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.commons.application.ApplicationBean;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.MemberModel;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.TagModel;
import com.aboutdata.model.dto.TagDTO;
import com.aboutdata.service.ConfigService;
import com.aboutdata.service.SearchService;
import com.aboutdata.service.TagService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import javax.annotation.Resource;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.impl.XMLResponseParser;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.response.UpdateResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 搜索功能 建立索引和搜索
 *
 * @author Administrator
 */
@Service("searchServiceImpl")
@Transactional
public class SearchServiceImpl implements SearchService {

    Logger logger = LoggerFactory.getLogger(SearchServiceImpl.class);

    @Resource
    private TagService tagService;

    @Resource
    private ConfigService configService;

    private static HttpSolrServer solrServer = null;

    //初始化slor连接器
    public SearchServiceImpl() {
        if (solrServer == null) {
            try {
                // configure a server object with actual solr values.
                String url = "http://localhost:9090/solr";
                // configure a server object with actual solr values.
                solrServer = new HttpSolrServer(url);
                solrServer.setParser(new XMLResponseParser());
                solrServer.setSoTimeout(5000);
                solrServer.setConnectionTimeout(5000);
                // Other commonly used properties
                solrServer.setDefaultMaxConnectionsPerHost(100);
                solrServer.setMaxTotalConnections(100);
                solrServer.setMaxRetries(1); // defaults to 0. > 1 not recommended.
            } catch (Exception exc) {
                logger.error(" Exception in getting Solr Connection: " + exc.getMessage());
                exc.printStackTrace();
            }
        }
    }

    /**
     * 构建索引
     */
    @Override
    public void build(Photos photo) {
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
        } catch (Exception ex) {
            logger.error("build index error {}", ex);
        }

    }

    /**
     * 搜索 返回结果
     *
     * @param keyword
     * @param pageable
     * @return
     */
    @Override
    public Page<PhotosModel> search(String keyword, Pageable pageable) {
        SolrQuery query = new SolrQuery();
        query.setQuery("tags:(" + keyword + ")  OR title:(" + keyword + ")");
        try {
            //设置分页信息
            query.setStart((pageable.getPageNumber() - 1) * pageable.getPageSize());
            query.setRows(pageable.getPageSize());
            //执行查询操作
            QueryResponse rsp = solrServer.query(query);
            //获取返回结果
            SolrDocumentList docs = rsp.getResults();
            List<PhotosModel> models = new ArrayList<PhotosModel>();
            for (SolrDocument solrDocument : docs) {
                String id = solrDocument.getFieldValue("id").toString();
                String title = solrDocument.getFieldValue("title").toString();
                String large = solrDocument.getFieldValue("large").toString();
                String medium = solrDocument.getFieldValue("medium").toString();
                String thumbnail = solrDocument.getFieldValue("thumbnail").toString();
                String source = solrDocument.getFieldValue("source").toString();
                String member_id = solrDocument.getFieldValue("member_id").toString();
                String member_User_name = solrDocument.getFieldValue("member_name").toString();

                //转换上传者的信息 只保留id和username
                MemberModel member = new MemberModel();
                member.setId(member_id);
                member.setUsername(member_User_name);

                String wallhaven = solrDocument.getFieldValue("wallhaven").toString();
                String create_date = solrDocument.getFieldValue("create_date").toString();
                String modify_date = solrDocument.getFieldValue("modify_date").toString();

                String tags = solrDocument.getFieldValue("tags").toString();

                Set<Tag> tagSet = tagService.getTagsFromString(tags);

                PhotosModel model = new PhotosModel();
                model.setId(id);
                model.setTitle(title);
                model.setLarge(large);
                model.setMedium(medium);
                model.setThumbnail(thumbnail);
                model.setSource(source);

                model.setWallhaven(wallhaven);
                //model.setCreateDate(new Date());
                // model.setModifyDate(new DateTime(modify_date).toDate());

                model.setMember(member);
                //转换tag
                List<TagModel> tagList = TagDTO.getTagModelsDTO(tagSet);
                model.setTags(tagList);

                models.add(model);
            }
            Page<PhotosModel> result = new PageImpl<PhotosModel>(models, pageable, docs.getNumFound());
            return result;
        } catch (SolrServerException ex) {
            logger.error("build index error {}", ex);
        }
        return null;
    }

    @Override
    public void delete(String id) {
        try {
            UpdateResponse response = solrServer.deleteById(id);
            logger.info("delete index status {}", response.getStatus());
        } catch (SolrServerException | IOException ex) {
            logger.error("delete index error {}", ex);
        }
    }

}
