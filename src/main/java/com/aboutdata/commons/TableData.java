package com.aboutdata.commons;

import java.io.Serializable;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import org.springframework.data.domain.Page;
/**
 * 用于jquery 分页组件
 *
 * @author Administrator
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class TableData implements Serializable {

    private static final long serialVersionUID = 20131015L;

    private int sEcho;

    private long iTotalRecords;

    private long iTotalDisplayRecords;

    private List aaData;

    public TableData() {
    }

    public TableData(final Page page, int sEcho) {
        aaData = page.getContent();
        iTotalRecords = page.getTotalElements();
        iTotalDisplayRecords = page.getTotalPages();
        this.sEcho = sEcho + 1;
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

    public List getAaData() {
        return aaData;
    }

    public void setAaData(List aaData) {
        this.aaData = aaData;
    }

}
