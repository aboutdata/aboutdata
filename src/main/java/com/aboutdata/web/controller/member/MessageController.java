/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller.member;

import com.aboutdata.domain.Member;
import com.aboutdata.domain.Message;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.MessageService;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller("shopMessageController")
@RequestMapping("/member/message")
public class MessageController {

    Logger logger = LoggerFactory.getLogger(MessageController.class);

    @Resource
    MessageService messageService;

    @Resource(name = "memberServiceImpl")
    MemberService memberService;

    /**
     * 列表
     *
     * @param model
     * @return
     */
    @RequestMapping(method = RequestMethod.GET)
    public String list(Model model) {
        Member receiver = memberService.getCurrent();

        Pageable pageable = new PageRequest(0, 24);
        Page<Message> pages = messageService.findByReceiver(receiver, pageable);
        logger.info("list {} ", pages.getContent().size());
        model.addAttribute("pages", pages);
        return "/member/message/list";
    }

}
