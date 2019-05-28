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

}