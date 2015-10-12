package com.aboutdata.commons.enums;

/**
 * 性别
 */
public enum Gender implements BaseEnum {

    /**
     * 男
     */
    male("男"),
    /**
     * 女
     */
    female("女");

    private final String key;

    private Gender(String key) {
        this.key = key;
    }

    @Override
    public String getKey() {
        return key;
    }
}
