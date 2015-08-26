/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service.bean;

import com.aboutdata.commons.config.BaseConfig;
import com.aboutdata.commons.config.EmailConfig;
import com.aboutdata.commons.config.SystemConfig;
import com.aboutdata.service.ConfigService;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * 固定配置信息
 *
 * @author aboutdata.me
 */
@Service("configServiceImpl")
public class ConfigServiceImpl implements ConfigService {

    public static Logger logger = LoggerFactory.getLogger(ConfigServiceImpl.class);

    private static final String DEFAULT_CONFIG_DIR = "/var/AnHao/config/";
    private JAXBContext unmarshallingClassJAXB;

    //加载配置文件/var/AnHao/config/
    private BaseConfig loadConfig(Class clazz) {
        BaseConfig result = null;
        try {
            this.unmarshallingClassJAXB = JAXBContext.newInstance(new Class[]{SystemConfig.class,EmailConfig.class});
            String configName = (String) clazz.getField("CONFIG_NAME").get(null);
            result = (BaseConfig) unmarshallingClassJAXB.createUnmarshaller().unmarshal(new FileInputStream(getConfigFilename(configName)));
            result.setLastUpdate(System.currentTimeMillis());
            result.setLastModified(getLastModified(configName));
        } catch (JAXBException | NoSuchFieldException | SecurityException | IllegalArgumentException | IllegalAccessException | FileNotFoundException ex) {
            logger.error("Error init read config env", ex);
        }
        return result;
    }

    //最后修改时间
    private long getLastModified(String configName) {
        String configFileName = getConfigFilename(configName);
        File configFile = new File(configFileName);
        if ((configFile.exists()) && (configFile.canRead())) {
            return configFile.lastModified();
        }
        return -1L;
    }

    private String getConfigFilename(String configName) {
        return DEFAULT_CONFIG_DIR + configName + ".xml";
    }

    
    @Override
    public String get() {
        // loaderCofig.load();
        return "i am dubbo demo server config";
    }
    /**
     * 系统配置
     *
     * @return
     */
    @Override
    public SystemConfig getSystemConfig() {
        return (SystemConfig) loadConfig(SystemConfig.class);
    }
    
     @Override
    public EmailConfig getEmailConfig() {
        return (EmailConfig) loadConfig(EmailConfig.class);
    }

}
