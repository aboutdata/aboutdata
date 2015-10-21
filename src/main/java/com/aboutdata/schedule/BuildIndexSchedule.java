/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.schedule;

import com.aboutdata.dao.PhotosDao;
import com.aboutdata.domain.Photos;
import com.aboutdata.schedule.task.BuildIndexTask;
import com.aboutdata.service.TagService;
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

    private int page = 1;
    private int pagesize = 20;
    private int totalpages=2600;
    
    @Resource
    private PhotosDao photosDao;

    @Resource
    private TagService tagService;

    private static HttpSolrServer solrServer = null;

    @Resource
    private ThreadPoolTaskExecutor taskExecutor;

//    @Scheduled(cron = "*/1 * * * * ?")
    public void execute() {
       // recordcount = (int) photosDao.count();
       // int totalpages = (recordcount + pagesize - 1) / pagesize;
        
        System.out.println("=============================================");
        System.out.println("ActiveCount :" + taskExecutor.getActiveCount());
        System.out.println("PoolSize :" + taskExecutor.getPoolSize());
        System.out.println("CorePoolSize :" + taskExecutor.getCorePoolSize());
        System.out.println("=============================================");

        if (taskExecutor.getActiveCount() < 10) {
            logger.info("当前页 : {}", page);
            if (page <= totalpages) {
                Pageable pageable = new PageRequest(page, pagesize);
                Page<Photos> pages = photosDao.findAll(pageable);
                for (Photos photo : pages.getContent()) {
                    taskExecutor.execute(new BuildIndexTask(photo, solrServer));
                }
                page = page + 1;
            } else {
                logger.info("抓取页码结束 {}", page);
            }
        }
    }

    //初始化slor连接器
    public BuildIndexSchedule() {
        
        
        
        if (solrServer == null) {
            try {
                // configure a server object with actual solr values.
                solrServer = new HttpSolrServer("http://123.57.240.11:9090/solr");
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
