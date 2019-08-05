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
public class MyInterceptor implements HandlerInterceptor {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    //白名单
    private static String [] whiteArr = {"/login","/judge","/serror","/first"};

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String urlPath = request.getServletPath();
        logger.debug("-- ◆◆◆ --> 进入拦截器，请求URL：{}",urlPath);

        //HandlerMethod handlerMethod = (HandlerMethod) handler;
        //Method method = handlerMethod.getMethod();
        //String methodName = method.getName();
        //logger.debug("-- ◆◆◆ --> 拦截到了方法：{}，在该方法执行之前执行", methodName);

        for (String s: whiteArr){
            if (s.equals(urlPath)){
                return true;
            }
        }

        //账号缓存
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        logger.debug("-- ◆◆◆ --> session = {}", admin);

        String redirectUrl = "/serror";

        if ("/".equals(urlPath)){
            redirectUrl = "/login";
        }

        if (admin == null){
            response.sendRedirect(redirectUrl);
            logger.debug("-- ◆◆◆ -->跳转到{}页面中", redirectUrl);
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
