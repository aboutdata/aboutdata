package com.aboutdata.domain;

import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
    @Length(max = 200)
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
    @Min(0)
    @Column(name = "orders")
    private Integer order;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(name = "xx_photos_tag",
            joinColumns = {
                @JoinColumn(name = "photo_id")},
            inverseJoinColumns = {
                @JoinColumn(name = "tag_id")})
    private Set<Tag> tags;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getLarge() {
        return large;
    }

    public void setLarge(String large) {
        this.large = large;
    }

    public String getMedium() {
        return medium;
    }

    public void setMedium(String medium) {
        this.medium = medium;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

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
