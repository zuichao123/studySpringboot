package com.example.controller.prac;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class pracController {

    @RequestMapping(value = "/prac")
    public ModelAndView prac1(ModelAndView modelAndView) {
        modelAndView.setViewName("prac/prac");
        return modelAndView;
    }
    //---------------------------pracHtml
    @RequestMapping(value = "/fuDong")
    public ModelAndView fuDong(ModelAndView modelAndView) {
        modelAndView.setViewName("pracHtml/fuDong");
        return modelAndView;
    }
    @RequestMapping(value = "/fuDong2")
    public ModelAndView fuDong2(ModelAndView modelAndView) {
        modelAndView.setViewName("pracHtml/fuDong2");
        return modelAndView;
    }
    @RequestMapping(value = "/clearFuDong")
    public ModelAndView fuDong3(ModelAndView modelAndView) {
        modelAndView.setViewName("pracHtml/clearFuDong");
        return modelAndView;
    }

}