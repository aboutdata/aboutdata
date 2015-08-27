package com.aboutdata.domain;

import com.aboutdata.commons.OrderEntity;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Entity - 地区
 *
 *
 *
 */
@Entity
@Table(name = "xx_area")
public class Area extends OrderEntity {

    /**
     * 名称
     */
    @NotEmpty
    @Length(max = 100)
    @Column(nullable = false, length = 100)
    private String name;

    /**
     * 全称
     */
    @Column(nullable = false, length = 500)
    private String fullName;

    /**
     * 树路径
     */
    @Column(nullable = false, updatable = false)
    private String treePath;

    /**
     * 上级地区
     */
    @ManyToOne(fetch = FetchType.LAZY)
    private Area parent;

    /**
     * 下级地区
     */
    @OneToMany(mappedBy = "parent", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    @OrderBy("order asc")
    private Set<Area> children = new HashSet<Area>();
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getTreePath() {
        return treePath;
    }

    public void setTreePath(String treePath) {
        this.treePath = treePath;
    }

    public Area getParent() {
        return parent;
    }

    public void setParent(Area parent) {
        this.parent = parent;
    }

    public Set<Area> getChildren() {
        return children;
    }

    public void setChildren(Set<Area> children) {
        this.children = children;
    }

}
