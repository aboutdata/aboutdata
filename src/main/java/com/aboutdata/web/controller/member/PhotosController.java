/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.ResponseMessage;
import com.aboutdata.commons.enums.PhotoStatus;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.Photos;
import com.aboutdata.domain.PhotosAlbum;
import com.aboutdata.domain.Tag;
import com.aboutdata.model.PhotosModel;
import com.aboutdata.model.TagModel;
import com.aboutdata.service.ImageGraphicsService;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.PhotosAlbumService;
import com.aboutdata.service.PhotosService;
import com.aboutdata.service.SearchService;
import com.aboutdata.service.TagService;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author youyou
 */
@Controller("photosController")
@RequestMapping("/member/photos")
public class PhotosController {

    Logger logger = LoggerFactory.getLogger(PhotosController.class);

    @Resource
    private PhotosService photosService;

    @Resource
    private PhotosAlbumService photosAlbumService;

    @Resource
    private ImageGraphicsService imageGraphicsService;

    @Resource
    private SearchService searchService;

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private TagService tagService;

    @RequestMapping(method = RequestMethod.GET)

    public String index(Integer pageNumber, ModelMap model) {

        List<PhotosAlbum> albums = photosAlbumService.findRoots();
        model.addAttribute("albums", albums);
        return "/member/photos/album";
    }

    @RequestMapping(value = "/wallpaper/{photosId}", method = RequestMethod.GET)
    public String wallpaper(@PathVariable("photosId") String photosId, ModelMap model) {
        PhotosModel photos = photosService.findById(photosId);
        String tagString = "";
        if (photos != null) {
            for (TagModel tag : photos.getTags()) {
                tagString += tag.getName() + ",";
            }
            tagString = tagString.substring(0, tagString.length());
        }
        model.addAttribute("photos", photos);
        model.addAttribute("tagString", tagString);

        return "/member/photos/wallpaper";
    }

    /**
     * 普通用户可以为图片添加标签
     *
     * @param id
     * @param tagName
     * @param model
     * @param rattr
     * @return
     */
    @RequestMapping(value = "/addTags", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage addTags(String id, String tagName, ModelMap model, RedirectAttributes rattr) {
        Member member = memberService.getCurrent();
        List<String> tags = tagService.findTagStringByName(tagName);
        //判断是否存在该tag ,如果不存在就自动添加
        if (tags == null || tags.isEmpty()) {
            Tag tag = new Tag();
            tag.setName(tagName);
            tag.setMember(member);
            tag.setCreateDate(new Date());
            tag.setModifyDate(new Date());
            tagService.create(tag);
        }

        photosService.addTags(id, tagName);
        /**
         * @ 添加新标签后需要更新索引
         * @ 这里修改APPROVED
         * @ 为了定时器BuildIndexSchedule能及时更新索引到solr
         */
        photosService.makrStatus(id, PhotoStatus.APPROVED);

        return ResponseMessage.success("添加标签成功");
    }

    /**
     * 移除标签
     *
     * @param id
     * @param tagId
     * @param model
     * @param rattr
     * @return
     */
    @RequestMapping(value = "/removeTags", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage removeTags(String id, String tagId, ModelMap model, RedirectAttributes rattr) {
        Member member = memberService.getCurrent();
        photosService.removeTags(id, tagId);
        return ResponseMessage.success("添加标签成功");
    }

}
