package com.toy.soft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by fu on 2017/3/31.
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(){
        return "customer/index";
    }
}