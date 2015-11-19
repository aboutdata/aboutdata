/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.config;

import java.io.Serializable;
import java.util.Random;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Administrator
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public final class OpenAuth2Client implements Serializable {

    // Replace these with your own api key and secret
    private String apiKey;
    private String apiSecret;
    private String callback;
    private String secretState = "secret" + new Random().nextInt(999_999);

    public String getApiKey() {
        return apiKey;
    }

    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public String getApiSecret() {
        return apiSecret;
    }

    public void setApiSecret(String apiSecret) {
        this.apiSecret = apiSecret;
    }

    public String getCallback() {
        return callback;
    }

    public void setCallback(String callback) {
        this.callback = callback;
    }

    public String getSecretState() {
        return secretState;
    }

    public void setSecretState(String secretState) {
        this.secretState = secretState;
    }

    @Override
    public String toString() {
        return "OpenAuth2Client{" + "apiKey=" + apiKey + ", apiSecret=" + apiSecret + ", callback=" + callback + ", secretState=" + secretState + '}';
    }
    
}
