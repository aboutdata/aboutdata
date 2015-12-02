/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.commons.enums.Oauth2Type;
import com.aboutdata.commons.oauth2.GithubProfile;
import com.aboutdata.domain.Member;
import com.aboutdata.domain.OpenAuth2;
import com.aboutdata.security.shiro.Principal;
import com.aboutdata.security.utils.SecurityPasswordUtils;
import com.aboutdata.service.MemberRankService;
import com.aboutdata.service.MemberService;
import com.aboutdata.service.OpenAuth2Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Token;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.model.Verifier;
import com.github.scribejava.core.oauth.OAuthService;
import org.springframework.stereotype.Controller;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.Date;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
@Controller
public class GitHubLoginController {

    private static final Logger logger = LoggerFactory.getLogger(GitHubLoginController.class);

    private static final String PROTECTED_RESOURCE_URL = "https://api.github.com/user";
    private static final Token EMPTY_TOKEN = null;

    @Resource
    private OpenAuth2Service openAuth2Service;

    @Resource
    private MemberService memberService;

    @Resource(name = "memberRankServiceImpl")
    private MemberRankService memberRankService;

    @RequestMapping(value = "/oauth2/github", method = RequestMethod.GET)
    public String displayGithubLogin(Model model) {
        final String authorizationUrl = openAuth2Service.getGithubService().getAuthorizationUrl(EMPTY_TOKEN);
        return "redirect:" + authorizationUrl;
    }

    @RequestMapping(value = "/oauth2/github/callback", method = RequestMethod.GET)
    public String callBack(String code, HttpSession session, Model model) {
        OAuthService service = openAuth2Service.getGithubService();
        final Verifier verifier = new Verifier(code);
        final Token accessToken = service.getAccessToken(EMPTY_TOKEN, verifier);

        final OAuthRequest request = new OAuthRequest(Verb.GET, PROTECTED_RESOURCE_URL, service);
        service.signRequest(accessToken, request);
        final Response response = request.send();

        try {
            ObjectMapper mapper = new ObjectMapper();
            GithubProfile githubProfile = mapper.readValue(response.getBody(), GithubProfile.class);
            OpenAuth2 openAuth2 = openAuth2Service.findByOauthIdAndType(githubProfile.getId(), Oauth2Type.GITHUB);

            //如果没有注册 系统自动为其注册新用户
            if (openAuth2 == null) {
                logger.info("githubProfile now regist {}", githubProfile);
                Member member = new Member();
                //密码
                String salt = SecurityPasswordUtils.getSalt();
                String passphrase = SecurityPasswordUtils.getPassphrase(salt, SecurityPasswordUtils.randomPassword());

                member.setUsername("git_" + githubProfile.getLogin());
                member.setSalt(salt);
                member.setPassword(passphrase);
                member.setEmail(githubProfile.getEmail());
                member.setPoint(1l);

                member.setIsEnabled(true);
                member.setIsLocked(false);
                member.setLoginFailureCount(0);
                member.setLockedDate(null);
//                member.setRegisterIp(request.getRemoteAddr());
//                member.setLoginIp(request.getRemoteAddr());
                member.setLoginDate(new Date());
                member.setMemberRank(memberRankService.findDefault());
                memberService.create(member);

                openAuth2 = new OpenAuth2();
                openAuth2.setMember(member);
                openAuth2.setOauthId(githubProfile.getId());
                openAuth2.setType(Oauth2Type.GITHUB);

                openAuth2Service.save(openAuth2);
                session.setAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME, new Principal(member.getId(), member.getUsername()));
            } else {
                logger.info("githubProfile already regist {}", githubProfile);

                Member member = openAuth2.getMember();
                session.setAttribute(Member.PRINCIPAL_ATTRIBUTE_NAME, new Principal(member.getId(), member.getUsername()));
            }
            logger.info("githubProfile  {}", githubProfile);
        } catch (IOException ex) {
            logger.info("oauth_callback parse json error  {}", ex);
        }

        return "redirect:/";
    }
}
