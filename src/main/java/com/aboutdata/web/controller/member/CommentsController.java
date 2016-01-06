/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.commons.ResponseMessage;
import com.aboutdata.commons.enums.CommentsType;
import com.aboutdata.domain.Comments;
import com.aboutdata.domain.Member;
import com.aboutdata.service.CommentsService;
import com.aboutdata.service.MemberService;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Administrator
 * @date 2016-1-6 13:49:53
 * @version V1.0
 */
@Controller("shopCommentsController")
@RequestMapping("/member/comments")
public class CommentsController {

    private static final Logger logger = LoggerFactory.getLogger(CommentsController.class);

    @Resource(name = "memberServiceImpl")
    private MemberService memberService;

    @Resource
    private CommentsService commentsService;

    /**
     * *
     * 给用户评论
     *
     * @param userId
     * @param comment
     * @return
     */
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    @ResponseBody
    public ResponseMessage post(String userId, String comment) {
        Member member = memberService.getCurrent();

        Comments comments = new Comments();
        comments.setType(CommentsType.User);
        comments.setEntityId(userId);
        comments.setComment(comment);
        comments.setMember(member);

        commentsService.save(comments);

        return ResponseMessage.success("评论成功");
    }
}
