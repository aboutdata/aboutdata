/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.service;

import java.io.File;

/**
 * 存储文件到 文件服务器
 *
 * @author Administrator
 */
public interface StorageService {

    /**
     * 文件上传
     *
     * @param file 上传文件
     * @return
     */
    public String upload(File file);

    public boolean remove(String fileId);
}
