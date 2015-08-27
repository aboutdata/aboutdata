package com.aboutdata.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import org.hibernate.validator.constraints.Length;

/**
 *
 * @author Administrator
 */

@Entity
@Table(name = "xx_photos")
public class Photos extends BaseEntity {

    /**
     * 标题
     */
    private String title;

    /**
     * 原图片
     */
    private String source;

    /**
     * 大图片
     */
    private String large;

    /**
     * 中图片
     */
    private String medium;

    /**
     * 缩略图
     */
    private String thumbnail;

    /**
     * 排序
     */
    private Integer order;
    /**
     * 获取标题
     *
     * @return 标题
     */
    @Length(max = 200)
    public String getTitle() {
        return title;
    }

    /**
     * 设置标题
     *
     * @param title 标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取原图片
     *
     * @return 原图片
     */
    public String getSource() {
        return source;
    }

    /**
     * 设置原图片
     *
     * @param source 原图片
     */
    public void setSource(String source) {
        this.source = source;
    }

    /**
     * 获取大图片
     *
     * @return 大图片
     */
    public String getLarge() {
        return large;
    }

    /**
     * 设置大图片
     *
     * @param large 大图片
     */
    public void setLarge(String large) {
        this.large = large;
    }

    /**
     * 获取中图片
     *
     * @return 中图片
     */
    public String getMedium() {
        return medium;
    }

    /**
     * 设置中图片
     *
     * @param medium 中图片
     */
    public void setMedium(String medium) {
        this.medium = medium;
    }

    /**
     * 获取缩略图
     *
     * @return 缩略图
     */
    public String getThumbnail() {
        return thumbnail;
    }

    /**
     * 设置缩略图
     *
     * @param thumbnail 缩略图
     */
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    /**
     * 获取排序
     *
     * @return 排序
     */
    @Min(0)
    @Column(name = "orders")
    public Integer getOrder() {
        return order;
    }

    /**
     * 设置排序
     *
     * @param order 排序
     */
    public void setOrder(Integer order) {
        this.order = order;
    }
    
    @Override
    public String toString() {
        return "ImageInfo{" + "title=" + title + ", source=" + source + ", large=" + large + ", medium=" + medium + ", thumbnail=" + thumbnail + ", order=" + order + '}';
    }
}
