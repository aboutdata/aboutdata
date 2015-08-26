/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.commons.config;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author aboutdata.me
 */
public abstract class BaseConfig implements Serializable{

    /**
     * Timestamp for the last time update/fetch config object from the config
     * repo.
     */
    @XmlTransient
    private volatile long lastUpdate = 0l;
    /**
     * Timestamp for the last time the content been changed.
     */
    @XmlTransient
    private volatile long lastModified = 0l;

    public synchronized long getLastUpdate() {
        return lastUpdate;
    }

    /**
     * Can't be changed once it set the value
     *
     * @param lastUpdate
     */
    public synchronized final void setLastUpdate(long lastUpdate) {
        this.lastUpdate = this.lastUpdate == 0l ? lastUpdate : this.lastUpdate;
    }

    public synchronized long getLastModified() {
        return lastModified;
    }

    public synchronized final void setLastModified(long lastModified) {
        this.lastModified = this.lastModified == 0l ? lastModified : this.lastModified;
    }
}
