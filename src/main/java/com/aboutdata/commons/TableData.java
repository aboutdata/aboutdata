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
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class TableData<T> implements Serializable{

    private static final long serialVersionUID = 20131015L;

    @XmlElement(name = "sEcho")
    private int sEcho;

    @XmlElement(name = "iTotalRecords")
    private long totalResords;

    @XmlElement(name = "iTotalDisplayRecords")
    private long totalDisplayRecords;

    @XmlElement(name = "aaData")
    private List<T> results;

    public TableData() {
    }

    public TableData(final Page pr,
                     final int sEcho,
                     final boolean dim) {
        results = pr.getContent();
        totalResords = pr.getTotalElements();
        totalDisplayRecords = pr.getTotalPages();
        this.sEcho = sEcho;
     }
}

