/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aboutdata.web.controller;

import com.aboutdata.commons.oauth2.GithubProfile;
import java.util.Random;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.github.scribejava.apis.GitHubApi;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Token;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.model.Verifier;
import com.github.scribejava.core.oauth.OAuthService;
import org.springframework.stereotype.Controller;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;

/**
 *
 * @author Administrator
 */
@Controller
public class GitHubLoginController {

    private static final Logger logger = LoggerFactory.getLogger(GitHubLoginController.class);

    private static final String PROTECTED_RESOURCE_URL = "https://api.github.com/user";
    private static final Token EMPTY_TOKEN = null;

    final String clientId = "e5071c636fc233d8a8c6";
    final String clientSecret = "0fb4c03145b812596cc05bff459678affdc87ba3";
    final String secretState = "secret" + new Random().nextInt(999_999);

    final OAuthService service = new ServiceBuilder()
            .provider(GitHubApi.class)
            .apiKey(clientId)
            .apiSecret(clientSecret)
            .state(secretState)
            .callback("http://localhost:8080/oauth_callback/")
            .build();

    @RequestMapping(value = "/github", method = RequestMethod.GET)
    public String displayGithubLogin(Model model) {
        final String authorizationUrl = service.getAuthorizationUrl(EMPTY_TOKEN);

        System.out.println(authorizationUrl);

        return "redirect:" + authorizationUrl;
    }

    @RequestMapping(value = "/oauth_callback", method = RequestMethod.GET)
    public String page2(String code, Model model) {
        logger.info("oauth_callback code {}", code);
//        logger.info("oauth_callback state {}", state);
        final Verifier verifier = new Verifier(code);
        final Token accessToken = service.getAccessToken(EMPTY_TOKEN, verifier);

        final OAuthRequest request = new OAuthRequest(Verb.GET, PROTECTED_RESOURCE_URL, service);
        service.signRequest(accessToken, request);
        final Response response = request.send();

        try {
            ObjectMapper mapper = new ObjectMapper();
            GithubProfile githubProfile = mapper.readValue(response.getBody(), GithubProfile.class);
            logger.info("githubProfile  {}", githubProfile);
        } catch (IOException ex) {
            logger.info("oauth_callback parse json error  {}", ex);
        }

        model.addAttribute("profile", response.getBody());
        return "/";
    }
}
