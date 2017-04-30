package com.toy.soft.controller;

import com.github.pagehelper.PageInfo;
import com.toy.soft.entity.PageQuery;
import com.toy.soft.entity.ToysInfoBean;
import com.toy.soft.service.ToysInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by fu on 2017/3/31.
 */
@Controller
public class IndexController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private ToysInfoService toysInfoService;
    @RequestMapping("/")
    public String index(Model model){
        PageQuery pageQuery=new PageQuery();
        pageQuery.setPageNum(1);
        pageQuery.setPageSize(12);
        PageInfo<ToysInfoBean> pageInfo=toysInfoService.selectByPage(pageQuery);
        if(pageInfo!=null&&pageInfo.getList()!=null&&pageInfo.getList().size()>0){
            model.addAttribute("toys",pageInfo.getList());
        }
        logger.info(pageInfo.getList().toString());
        return "customer/index";
    }
    @RequestMapping("/helpCenter")
    public String helpCenter(){
        return "customer/helpCenter";
    }
    @RequestMapping("/aboutUs")
    public String aboutUs(){
        return "customer/aboutUs";
    }
    @RequestMapping("/process")
    public String process(){
        return "customer/process";
    }
    @RequestMapping("/guide")
    public String guide(){
        return "customer/guide";
    }
    @RequestMapping("/personCenter")
    public String personCenter(){
        return "customer/personCenter";
    }
    @RequestMapping("/cart")
    public String cart(){
        return "customer/cart";
    }
}