package com.aboutdata.service.bean;


import com.aboutdata.service.CaptchaService;
import java.awt.image.BufferedImage;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/**
 * Service - 验证码
 *
 *
 *
 */
@Service("captchaServiceImpl")
public class CaptchaServiceImpl implements CaptchaService {

    @Resource(name = "imageCaptchaService")
    private com.octo.captcha.service.CaptchaService imageCaptchaService;

    @Override
    public BufferedImage buildImage(String captchaId) {
        return (BufferedImage) imageCaptchaService.getChallengeForID(captchaId);
    }

    @Override
    public boolean isValid(String captchaId, String captcha) {
        if (StringUtils.isNotEmpty(captchaId) && StringUtils.isNotEmpty(captcha)) {
            try {
                return imageCaptchaService.validateResponseForID(captchaId, captcha.toUpperCase());
            } catch (Exception e) {
                return false;
            }
        } else {
            return false;
        }
    }

}
