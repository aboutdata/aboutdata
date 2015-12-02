/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.commons.enums.Oauth2Type;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.OpenAuth2;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.security.utils.SecurityPasswordUtils;
import com.aboutdata.service.MemberRankService;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.OpenAuth2Service;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Token;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.model.Verifier;
import com.github.scribejava.core.oauth.OAuthService;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
public class SinaWeiboLoginController {

    private static final Logger logger = LoggerFactory.getLogger(SinaWeiboLoginController.class);
    
    private static final String PROTECTED_RESOURCE_URL = "https://api.weibo.com/2/account/get_uid.json";
    private static final Token EMPTY_TOKEN = null;

    @Resource
    private OpenAuth2Service openAuth2Service;

    @Resource
    private MemberService memberService;

    @Resource(name = "memberRankServiceImpl")
    private MemberRankService memberRankService;

    @RequestMapping(value = "/oauth2/sina", method = RequestMethod.GET)
    public String displayGithubLogin(Model model) {
        final String authorizationUrl = openAuth2Service.getSinaWeiboService().getAuthorizationUrl(EMPTY_TOKEN);
        System.out.println(authorizationUrl);
        return "redirect:" + authorizationUrl;
    }

    /**
     * 微博登录回调
     *
     * @param code
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value = "/oauth2/sina/callback", method = RequestMethod.GET)
    public String callBack(String code, HttpSession session, Model model) {
        logger.info("oauth_callback code {}", code);
        OAuthService service = openAuth2Service.getSinaWeiboService();
        
        final Verifier verifier = new Verifier(code);
        final Token accessToken = service.getAccessToken(EMPTY_TOKEN, verifier);
        final OAuthRequest request = new OAuthRequest(Verb.GET, PROTECTED_RESOURCE_URL, service);
        service.signRequest(accessToken, request);
        final Response response = request.send();
        try {
            ObjectMapper mapper = new ObjectMapper();
            Map uidMap = mapper.readValue(response.getBody(), Map.class);
            String uid = (Long) uidMap.get("uid") + "";
            OpenAuth2 openAuth2 = openAuth2Service.findByOauthIdAndType(uid, Oauth2Type.SINAWEIBO);

            //如果没有注册 系统自动为其注册新用户
            if (openAuth2 == null) {
                Member member = new Member();
                //密码
                String salt = SecurityPasswordUtils.getSalt();
                String passphrase = SecurityPasswordUtils.getPassphrase(salt, SecurityPasswordUtils.randomPassword());

                member.setUsername("sina_" + uid);
                member.setSalt(salt);
                member.setPassword(passphrase);
                member.setEmail(salt + "@temp.com");
                member.setPoint(1l);

                member.setIsEnabled(true);
                member.setIsLocked(false);
                member.setLoginFailureCount(0);
                member.setLockedDate(null);
//                member.setRegisterIp(request.getRemoteAddr());
//                member.setLoginIp(request.getRemoteAddr());
                member.setLoginDate(new Date());
                member.setMemberRank(memberRankService.findDefault());
                //根据weibo用户id创建一个用户
                memberService.create(member);

                openAuth2 = new OpenAuth2();
                openAuth2.setMember(member);
                openAuth2.setOauthId(uid);
                openAuth2.setType(Oauth2Type.SINAWEIBO);
                //记录到数据库 保存改用户曾经再本网站登录过
                openAuth2Service.save(openAuth2);
                session.setAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME, new Principal(member.getId(), member.getUsername()));
            } else {
                logger.info("weiboProfile already regist {}", uid);

                Member member = openAuth2.getMember();
                session.setAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME, new Principal(member.getId(), member.getUsername()));
            }
        } catch (IOException ex) {
            logger.info("oauth_callback parse json error  {}", ex);
        }

        return "redirect:/";
    }
}
