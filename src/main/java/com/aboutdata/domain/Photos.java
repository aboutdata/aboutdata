package com.aboutdata.domain;

import com.aboutdata.commons.enums.PhotoStatus;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
     * 壁纸原图的宽高
     */
    @Column(nullable = false)
    private int width = 0;

    @Column(nullable = false)
    private int height = 0;

    /**
     * 图片大小
     */
    @Column(nullable = false)
    private long size;
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
     * 是否来自wallhaven
     */
    @Column(length = 9)
    private String wallhaven;

    /**
     * 图片服务器地址
     */
    @Column(length = 30)
    private String storageHost;

    /**
     * 排序 暂时用orders用来存储访问次数
     */
    @Min(0)
    @Column(name = "orders")
    private Integer order;

    /**
     * @ 壁纸的描述信息
     * @ 主要为更好的说明图片内容和搜索引擎收录
     */
    @Length(max = 500)
    private String description;
    /**
     * PhotoStatus 状态信息
     */
    @Enumerated(EnumType.STRING)
    @Column(nullable = true, length = 20)
    private PhotoStatus status = PhotoStatus.ASSIGNED;

    @ManyToOne
    @JoinColumn(name = "album_id", nullable = false)
    private PhotosAlbum album;

    @ManyToOne
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;

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

    public String getStorageHost() {
        return storageHost;
    }

    public void setStorageHost(String storageHost) {
        this.storageHost = storageHost;
    }

    public PhotoStatus getStatus() {
        return status;
    }

    public void setStatus(PhotoStatus status) {
        this.status = status;
    }

    /**
     * 设置排序
     *
     * @param order 排序
     */
    public void setOrder(Integer order) {
        this.order = order;
    }

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }

    public Member getMember() {
        return member;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public PhotosAlbum getAlbum() {
        return album;
    }

    public void setAlbum(PhotosAlbum album) {
        this.album = album;
    }

    public String getWallhaven() {
        return wallhaven;
    }

    public void setWallhaven(String wallhaven) {
        this.wallhaven = wallhaven;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "Photos{" + "title=" + title + ", width=" + width + ", height=" + height + ", size=" + size + ", source=" + source + ", large=" + large + ", medium=" + medium + ", thumbnail=" + thumbnail + ", wallhaven=" + wallhaven + ", storageHost=" + storageHost + ", order=" + order + ", description=" + description + ", status=" + status + ", album=" + album + ", member=" + member + ", tags=" + tags + '}';
    }
    

}
