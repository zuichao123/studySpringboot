package com.example.interceptor;

import com.example.entry.Admin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class AuthorizationInterceptor implements HandlerInterceptor {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String urlPath = request.getServletPath();
        logger.debug("-- ◆◆◆ --> 进入拦截器，请求URL："+urlPath);
        System.out.printf("-- ◆◆◆ --> 进入拦截器，请求URL："+urlPath+"\n");

        //白名单
        String [] whiteArr = new String[]{"/judge", "/login","/serror"};
        for (String s: whiteArr){
            if (s.equals(urlPath)){
                return true;
            }
        }

        //账号缓存
        Admin admin = (Admin) request.getSession().getAttribute("admin");

        String redirectUrl = "/serror";

        if ("/".equals(urlPath)){
            redirectUrl = "/login";
        }

        if (admin == null){
            response.sendRedirect(redirectUrl);
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
