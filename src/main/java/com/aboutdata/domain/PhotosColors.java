package com.aboutdata.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @ 图片颜色值
 * 
 * @author Administrator
 */
@Entity
@Table(name = "xx_photos_colors")
public class PhotosColors extends BaseEntity {

    /**
     *
     */
    private static final long serialVersionUID = 6480913026914570289L;

    @OneToOne
    @JoinColumn(name = "photos_id", nullable = false)
    private Photos photos;

    @Column(nullable = false, length = 7)
    private int red;

    @Column(nullable = false, length = 7)
    private int green;

    @Column(nullable = false, length = 7)
    private int blue;

    @Column(nullable = false, length = 7)
    private String color;

    public Photos getPhotos() {
        return photos;
    }

    public void setPhotos(Photos photos) {
        this.photos = photos;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getRed() {
        return red;
    }

    public void setRed(int red) {
        this.red = red;
    }

    public int getGreen() {
        return green;
    }

    public void setGreen(int green) {
        this.green = green;
    }

    public int getBlue() {
        return blue;
    }

    public void setBlue(int blue) {
        this.blue = blue;
    }

}
