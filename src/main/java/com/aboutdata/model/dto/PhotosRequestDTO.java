/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.model.dto;

import java.util.List;
import java.util.ArrayList;
import com.aboutdata.domain.PhotosRequest;
import com.aboutdata.model.PhotosRequestModel;

/**
 * 图片上传申请 DTO转换
 *
 * @再转换时models 不能为空,返回是model不是null 而只是一个数组长度为0的List
 * @see PhotosRequestDTO
 * @author Administrator
 */
public class PhotosRequestDTO {

    public static PhotosRequestModel getPhotosRequestModelDTO(PhotosRequest rquest) {
        PhotosRequestModel result = null;
        if (rquest != null) {
            result = new PhotosRequestModel();

            result.setId(rquest.getId());
            result.setTitle(rquest.getTitle());
            result.setSource(rquest.getSource());
            result.setWidth(rquest.getWidth());
            result.setHeight(rquest.getHeight());
            result.setSize(rquest.getSize());
            result.setStatus(rquest.getStatus());
            result.setOrder(rquest.getOrder());
            result.setDescription(rquest.getDescription());
            result.setClaim(rquest.getClaim());
            result.setCreateDate(rquest.getCreateDate());
            result.setModifyDate(rquest.getModifyDate());

            result.setMember(MemberDTO.getMemberModelDTO(rquest.getMember()));

        }
        return result;
    }

    /**
     * PhotosRequest转换成PhotosRequestModel根据list转换
     *
     * @param rquests
     * @return
     */
    public static List<PhotosRequestModel> getPhotosRequestModeslDTO(List<PhotosRequest> rquests) {
        List<PhotosRequestModel> result = new ArrayList<PhotosRequestModel>(rquests.size());
        if (rquests.size() > 0) {
            result = new ArrayList(rquests.size());
            for (PhotosRequest rquest : rquests) {
                //DTO转换
                PhotosRequestModel model = new PhotosRequestModel();

                model.setId(rquest.getId());
                model.setTitle(rquest.getTitle());
                model.setSource(rquest.getSource());
                model.setWidth(rquest.getWidth());
                model.setHeight(rquest.getHeight());
                model.setSize(rquest.getSize());
                model.setStatus(rquest.getStatus());
                model.setOrder(rquest.getOrder());
                model.setDescription(rquest.getDescription());
                model.setClaim(rquest.getClaim());
                model.setCreateDate(rquest.getCreateDate());
                model.setModifyDate(rquest.getModifyDate());

                model.setMember(MemberDTO.getMemberModelDTO(rquest.getMember()));

                result.add(model);
            }
        }
        return result;
    }
}
