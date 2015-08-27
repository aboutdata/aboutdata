/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_tag")
public class Tag extends BaseEntity {

    private static final long serialVersionUID = 984410247121721301L;

    /**
     * Tag name
     */
    @Column(name = "name", nullable = false, unique = true, length = 20)
    private String name;

    @Column(name = "member_id", nullable = false, unique = true, length = 20)
    private long memberId;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getMemberId() {
        return memberId;
    }

    public void setMemberId(long memberId) {
        this.memberId = memberId;
    }

    @Override
    public String toString() {
        return "Tag{" + "name=" + name + ", memberId=" + memberId + '}';
    }

}
