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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by fu on 2017/4/30.
 */
@Controller
@RequestMapping("/toy")
public class ToyController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private ToysInfoService toysInfoService;
    @RequestMapping("/toyDetail")
    public String toyDetail(@RequestParam String id, Model model){
        logger.info(id);
        ToysInfoBean toysInfoBean=toysInfoService.selectById(id);
        model.addAttribute("toys",toysInfoBean);
        return "customer/productDetail";
    }
    @RequestMapping("/list")
    public String toyList(@RequestParam String type, Model model){
        logger.info(type);
        PageQuery pageQuery=new PageQuery();
        pageQuery.setPageNum(1);
        pageQuery.setPageSize(20);
        PageInfo<ToysInfoBean> pageInfo=toysInfoService.selectByTypepage(pageQuery,type);
        if(pageInfo!=null&&pageInfo.getList()!=null&&pageInfo.getList().size()>0){
            model.addAttribute("toysList",pageInfo.getList());
        }
        logger.info(pageInfo.getList().toString());
        return "customer/list";
    }
}
