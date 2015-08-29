/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons;

import com.aboutdata.commons.enums.ResponseMessageType;

/**
 *
 * @author youyou
 */
public class ResponseMessage {

    /**
     * 类型
     */
    private ResponseMessageType type;

    /**
     * 内容
     */
    private String content;

    /**
     * 初始化一个新创建的 Message 对象，使其表示一个空消息。
     */
    public ResponseMessage() {

    }

    /**
     * 初始化一个新创建的 Message 对象
     *
     * @param type 类型
     * @param content 内容
     */
    public ResponseMessage(ResponseMessageType type, String content) {
        this.type = type;
        this.content = content;
    }

    /**
     * 返回成功消息
     *
     * @param content 内容
     * @return 成功消息
     */
    public static ResponseMessage success(String content) {
        return new ResponseMessage(ResponseMessageType.success, content);
    }

    /**
     * 返回警告消息
     *
     * @param content 内容
     * @return 警告消息
     */
    public static ResponseMessage warn(String content) {
        return new ResponseMessage(ResponseMessageType.warn, content);
    }

    /**
     * 返回错误消息
     *
     * @param content 内容
     * @return 错误消息
     */
    public static ResponseMessage error(String content) {
        return new ResponseMessage(ResponseMessageType.error, content);
    }

    /**
     * 获取类型
     *
     * @return 类型
     */
    public ResponseMessageType getType() {
        return type;
    }

    /**
     * 设置类型
     *
     * @param type 类型
     */
    public void setType(ResponseMessageType type) {
        this.type = type;
    }

    /**
     * 获取内容
     *
     * @return 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
    }

}
