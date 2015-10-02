package com.aboutdata.commons;

import java.io.Serializable;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.data.domain.Page;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author keven
 */
public class TableData<T> implements Serializable {

    private static final long serialVersionUID = 20131015L;

    private int sEcho;

    private long iTotalRecords;

    private long iTotalDisplayRecords;

    private List<T> aaData;

    public TableData() {
    }

    public TableData(final Page pr,
            final int sEcho,
            final boolean dim) {
        this.aaData = pr.getContent();
        this.iTotalDisplayRecords = pr.getTotalElements();
        this.iTotalRecords = pr.getTotalPages();
        this.sEcho = sEcho+1;
    }

    public int getsEcho() {
        return sEcho;
    }

    public void setsEcho(int sEcho) {
        this.sEcho = sEcho;
    }

    public long getiTotalRecords() {
        return iTotalRecords;
    }

    public void setiTotalRecords(long iTotalRecords) {
        this.iTotalRecords = iTotalRecords;
    }

    public long getiTotalDisplayRecords() {
        return iTotalDisplayRecords;
    }

    public void setiTotalDisplayRecords(long iTotalDisplayRecords) {
        this.iTotalDisplayRecords = iTotalDisplayRecords;
    }

    public List<T> getAaData() {
        return aaData;
    }

    public void setAaData(List<T> aaData) {
        this.aaData = aaData;
    }

    @Override
    public String toString() {
        return "TableData{" + "sEcho=" + sEcho + ", iTotalRecords=" + iTotalRecords + ", iTotalDisplayRecords=" + iTotalDisplayRecords + ", aaData=" + aaData + '}';
    }
    
    
}
