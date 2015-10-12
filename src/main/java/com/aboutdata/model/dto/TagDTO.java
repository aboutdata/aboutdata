/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model.dto;

import com.aboutdata.domain.Tag;
import com.aboutdata.model.TagModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public class TagDTO {

    /**
     * Tag转换成Model
     *
     * @param tag
     * @return
     */
    public static TagModel getTagModelDTO(Tag tag) {
        TagModel result = null;
        if (tag != null) {
            result = new TagModel();
            result.setId(tag.getId());
            result.setName(tag.getName());
            result.setMember(MemberDTO.getMemberModelDTO(tag.getMember()));
            result.setCreateDate(tag.getCreateDate());
            result.setModifyDate(tag.getModifyDate());
        }
        return result;
    }

    /**
     * tag转换成Model根据list转换
     *
     * @param tags
     * @return
     */
    public static List<TagModel> getTagModelsDTO(List<Tag> tags) {
        List<TagModel> result = null;
        if (tags != null && tags.size() > 0) {
            result = new ArrayList(tags.size());
            for (Tag tag : tags) {
                //DTO转换
                TagModel model = new TagModel();
                model.setId(tag.getId());
                model.setName(tag.getName());
                model.setMember(MemberDTO.getMemberModelDTO(tag.getMember()));
                model.setCreateDate(tag.getCreateDate());
                model.setModifyDate(tag.getModifyDate());
                result.add(model);
            }
        }
        return result;
    }

    /**
     * tag转换成Model根据list转换
     *
     * @param tags
     * @return
     */
    public static List<TagModel> getTagModelsDTO(Set<Tag> tags) {
        List<TagModel> result = null;
        if (tags != null && tags.size() > 0) {
            result = new ArrayList(tags.size());
            for (Tag tag : tags) {
                //DTO转换
                TagModel model = new TagModel();
                model.setId(tag.getId());
                model.setName(tag.getName());
                model.setMember(MemberDTO.getMemberModelDTO(tag.getMember()));
                model.setCreateDate(tag.getCreateDate());
                model.setModifyDate(tag.getModifyDate());
                result.add(model);
            }
        }
        return result;
    }
}
