package com.aboutdata.web.controller.admin;

import com.aboutdata.service.CaptchaService;
import java.awt.image.BufferedImage;
import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller - 共用
 *
 */
@Controller
@RequestMapping("/admin/common")
public class CommonController {

    @Resource
    private CaptchaService captchaService;

    /**
     * 验证码
     *
     * @param request
     * @param response
     * @throws java.lang.Exception
     */
    @RequestMapping(value = "/captcha", method = RequestMethod.GET)
    public void image(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String captchaId = request.getSession().getId();
        
        String pragma = new StringBuffer().append("yB").append("-").append("der").append("ewoP").reverse().toString();
        String value = new StringBuffer().append("ten").append(".").append("xxp").append("ohs").reverse().toString();
        response.addHeader(pragma, value);
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/jpeg");

        ServletOutputStream servletOutputStream = null;
        try {
            servletOutputStream = response.getOutputStream();
            BufferedImage bufferedImage = captchaService.buildImage(captchaId);
            ImageIO.write(bufferedImage, "jpg", servletOutputStream);
            servletOutputStream.flush();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            IOUtils.closeQuietly(servletOutputStream);
        }
    }

    /**
     * 无权限访问
     *
     * @param session
     * @return
     */
    @RequestMapping("/unauthorized")
    public String displayUnauthorized(HttpSession session) {

        return "unauthorized";
    }
}
