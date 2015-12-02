/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.enums;

/**
 *
 * @author Administrator
 */
public enum PhotosRequestStatus implements BaseEnum {

    UNASSIGNED("未处理"),
    ASSIGNED("处理中"),
    CANCELED("已取消"),//只有在UNASSIGNED和ASSIGNED状态的可以取消
    PENDING_APPORVE("待批准"),
    APPROVED("已批准"),
    REJECTED("已驳回"),
    ARCHIVED("已存档"),
    DELETED("已刪除");

    private final String key;

    private PhotosRequestStatus(String key) {
        this.key = key;
    }

    @Override
    public String getKey() {
        return key;
    }
}
