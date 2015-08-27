/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.domain;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "xx_photo_tag")
public class PhotoTag extends BaseEntity {

    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "photos_id")
    private Photos photos;
    
    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "tag_id")
    private Tag tag;

    public Photos getPhotos() {
        return photos;
    }

    public void setPhotos(Photos photos) {
        this.photos = photos;
    }

    public Tag getTag() {
        return tag;
    }

    public void setTag(Tag tag) {
        this.tag = tag;
    }

}
