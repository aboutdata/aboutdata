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
public enum EmailType implements BaseEnum {
    
    
    MARKET_REGISTER_ACTIVE("market.register.active");

   
    private final String key;
    
    private EmailType(String key) {
        this.key = key;
    }

    @Override
    public String getKey() {
        return key;
    }
}
