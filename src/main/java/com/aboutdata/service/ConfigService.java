/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import com.aboutdata.commons.config.SystemConfig;


/**
 *
 * @author Administrator
 */
public interface ConfigService {

    public String get();

    public SystemConfig getSystemConfig();
}
