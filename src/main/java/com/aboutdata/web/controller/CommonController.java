package com.aboutdata.web.controller;

import com.aboutdata.domain.Area;
import com.aboutdata.service.AreaService;
import com.aboutdata.service.CaptchaService;
import java.awt.image.BufferedImage;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Controller - 共用
 *
 *
 *
 */
@Controller("shopCommonController")
@RequestMapping("/common")
public class CommonController {

    @Resource(name = "areaServiceImpl")
    private AreaService areaService;
    @Resource(name = "captchaServiceImpl")
    private CaptchaService captchaService;

    /**
     * 地区
     */
//	@RequestMapping(value = "/area", method = RequestMethod.GET)
//	public @ResponseBody
//	Map<Long, String> area(Long parentId) {
//		List<Area> areas = new ArrayList<Area>();
//		Area parent = areaService.findRoots(parentId);
//		if (parent != null) {
//			areas = new ArrayList<Area>(parent.getChildren());
//		} else {
//			areas = areaService.findRoots();
//		}
//		Map<Long, String> options = new HashMap<Long, String>();
//		for (Area area : areas) {
//			options.put(area.getId(), area.getName());
//		}
//		return options;
//	}
    /**
     * 验证码
     */
    @RequestMapping(value = "/captcha", method = RequestMethod.GET)
    public void image(String captchaId, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (StringUtils.isEmpty(captchaId)) {
            captchaId = request.getSession().getId();
        }
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
     * 资源不存在 404
     */
    @RequestMapping("/resource_not_found")
    public String resourceNotFound() {
        return "/error/404";
    }
}
