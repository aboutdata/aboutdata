/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.service.StorageService;
import java.io.File;
import net.mikesu.fastdfs.FastdfsClient;
import net.mikesu.fastdfs.FastdfsClientFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * 存储到fastdfs
 * @author Administrator
 */
@Service("storageServiceImpl")
public class StorageServiceImpl implements StorageService {
    
    Logger logger = LoggerFactory.getLogger(StorageServiceImpl.class);
    
    @Override
    public String upload(File file) {
        try {
            FastdfsClient fastdfsClient = FastdfsClientFactory.getFastdfsClient("FastdfsClient.properties");
            String fileId = fastdfsClient.upload(file);
            logger.info("fastdfs upload file path : {}", fileId);
            return fileId;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
}
