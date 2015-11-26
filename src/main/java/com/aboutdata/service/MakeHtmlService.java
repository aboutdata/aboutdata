/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import java.util.Map;

/**
 *
 * @author Administrator
 */
public interface MakeHtmlService {

    public int build(String templatePath, String staticPath, Map<String, Object> model);
}
