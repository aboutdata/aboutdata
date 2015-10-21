/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.enums;

/**
 * 图片的状态信息
 *
 * @author youyou
 */
public enum PhotoStatus implements BaseEnum {

    UNASSIGNED("未处理"),
    ASSIGNED("处理中"),
    CANCELED("已取消"),//只有在UNASSIGNED和ASSIGNED状态的可以取消
    PENDING_APPORVE("待批准"),
    APPROVED("已批准"),
    INDEXED("已索引"),//用来标识是否意见solr建立索引
    REJECTED("已驳回"),
    ARCHIVED("已存档"),
    DELETED("已刪除");

    private final String key;

    private PhotoStatus(String key) {
        this.key = key;
    }

    @Override
    public String getKey() {
        return key;
    }
}
