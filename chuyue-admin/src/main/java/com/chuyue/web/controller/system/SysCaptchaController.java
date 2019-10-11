package com.chuyue.web.controller.system;

import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.google.code.kaptcha.Constants;
import com.chuyue.common.core.controller.BaseController;
import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;

/**
 * 图片验证码
 * 
 * @author chuyue
 */
@Controller
@RequestMapping("/captcha")
public class SysCaptchaController extends BaseController
{

    /**
     * 验证码生成
     */
    @GetMapping(value = "/captchaImage")
    public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response)
    {
        ServletOutputStream out = null;
        try
        {
            HttpSession session = request.getSession();
            response.setDateHeader("Expires", 0);
            response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
            response.addHeader("Cache-Control", "post-check=0, pre-check=0");
            response.setHeader("Pragma", "no-cache");
            response.setContentType("image/jpeg");

            BufferedImage bi = null;
            //定义图形验证码的长和宽
            LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(200, 80);
            String code = lineCaptcha.getCode();
            session.setAttribute(Constants.KAPTCHA_SESSION_KEY, code);
            out = response.getOutputStream();
            lineCaptcha.write(out);
            out.flush();

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                if (out != null)
                {
                    out.close();
                }
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        return null;
    }
}