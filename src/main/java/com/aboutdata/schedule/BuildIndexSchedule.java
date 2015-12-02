/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule;

import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.schedule.task.BuildIndexTask;
import com.aboutdata.service.PhotosService;
import javax.annotation.Resource;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.impl.XMLResponseParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Component;
/**
 *
 * @author Administrator
 */
@Component
public class BuildIndexSchedule {

    Logger logger = LoggerFactory.getLogger(BuildIndexSchedule.class);

    private int page = 0;
    private int pagesize = 24;

    @Resource
    private PhotosDao photosDao;

    @Resource
    private PhotosService photosService;

    private static HttpSolrServer solrServer = null;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

    @Scheduled(cron = "*/10 * * * * ?")
    public void execute() {
        logger.info("=============================================");
        logger.info("ActiveCount :" + taskExecutor.getActiveCount());
        if (taskExecutor.getActiveCount() < 10) {
            Pageable pageable = new PageRequest(page, pagesize);
            Page<Photos> pages = photosDao.findByStatus(PhotoStatus.APPROVED, pageable);
            logger.info("solrServer : {}", solrServer.getBaseURL());
            for (Photos photo : pages.getContent()) {
                taskExecutor.execute(new BuildIndexTask(photo, photosService, solrServer));
            }
        }
    }

    //初始化slor连接器
    public BuildIndexSchedule() {
        if (solrServer == null) {
            try {
//                logger.info("configService.getSystemConfig().getSolrServer() : {}", configService.getSystemConfig().getSolrServer());
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
}
