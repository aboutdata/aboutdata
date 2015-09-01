/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import javax.persistence.Entity;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Length;
/**
 *
 * @author youyou
 */
@Entity
@Table(name = "xx_member_infomation")
public class MemberInfomation extends BaseEntity {

    @Length(max = 500)
    private String description;

    @Length(max = 36)
    private String backgroundId;
    

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBackgroundId() {
        return backgroundId;
    }

    public void setBackgroundId(String backgroundId) {
        this.backgroundId = backgroundId;
    }
    
    

}
