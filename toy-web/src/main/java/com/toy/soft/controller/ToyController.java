package com.toy.soft.controller;

import com.github.pagehelper.PageInfo;
import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.PageQuery;
import com.toy.soft.entity.ToysInfoBean;
import com.toy.soft.service.ToysInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

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
        PageQuery hotePage =new PageQuery();
        hotePage.setPageNum(1);
        hotePage.setPageSize(6);
        PageInfo<ToysInfoBean> pageInfo1=toysInfoService.selectByPage(hotePage);
        if(pageInfo1!=null&&pageInfo1.getList()!=null&&pageInfo1.getList().size()>0){
            model.addAttribute("hotToys",pageInfo1.getList());
        }
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
        PageQuery hotePage =new PageQuery();
        hotePage.setPageNum(1);
        hotePage.setPageSize(6);
        PageInfo<ToysInfoBean> pageInfo1=toysInfoService.selectByPage(hotePage);
        if(pageInfo1!=null&&pageInfo1.getList()!=null&&pageInfo1.getList().size()>0){
            model.addAttribute("hotToys",pageInfo1.getList());
        }
        logger.info(pageInfo.getList().toString());
        return "customer/list";
    }
    @RequestMapping("searchList")
    public String searchList(@RequestParam String type, Model model){
        List<ToysInfoBean> list=toysInfoService.selectMo(type);
        model.addAttribute("toysList",list);
        return "customer/list";
    }
    @RequestMapping("/admin_toyList")
    public String admin_toyList(Model model){
        List<ToysInfoBean> list =toysInfoService.selectAll();
        model.addAttribute("admin_toyList",list);
        return "admin/toys_list";
    }
    @RequestMapping("toy_add")
    public String toy_add(){
        return "admin/toys_add";
    }
    @RequestMapping(value="toy_addToy",method =RequestMethod.POST)
    public
    @ResponseBody JsonMessage<String> toy_addToy(ToysInfoBean toysInfoBean){
        String currentId= UUID.randomUUID().toString();
        toysInfoBean.setId(currentId);
        JsonMessage<String> result = new JsonMessage<>();
        try{
            toysInfoService.addToys(toysInfoBean);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("添加成功！");
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("添加失败！");
        }
        return result;
    }
    @RequestMapping(value = "/toyDelete",method = RequestMethod.POST)
    public
    @ResponseBody JsonMessage<String> toyDelete(String id){
         JsonMessage<String> result = new JsonMessage<>();
        try{
            toysInfoService.delectBykey(id);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("删除成功！");
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setData("删除失败！");
        }
        return result;
    }
    @RequestMapping(value = "/updateToy")
    public
    String updateToy(String id,Model model){
        try{
            ToysInfoBean toysInfoBean=toysInfoService.selectById(id);
            model.addAttribute("toys",toysInfoBean);
        }catch(Exception e){
            logger.error(e.getMessage());
        }
        return "admin/toys_update";
    }
    @RequestMapping(value = "/toy_uploadToylast",method = RequestMethod.POST)
    public
    @ResponseBody JsonMessage<String> uploadToylast(ToysInfoBean toysInfoBean){
        JsonMessage<String> result=new JsonMessage<>();
        try{
            String oldPicture =(toysInfoService.selectById(toysInfoBean.getId())).getPicture();

            String currentPicture = oldPicture+','+toysInfoBean.getPicture();
            toysInfoBean.setPicture(currentPicture);
            toysInfoService.updateToys(toysInfoBean);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("修改成功！");
        }catch(Exception e){
            logger.error(e.getMessage());
            result.setStatus(OperateResult.FALLED.toString());
            result.setData("修改失败！");
        }
        return result;
    }
    @RequestMapping(value = "/toy_search",method = RequestMethod.GET)
    public
    @ResponseBody  JsonMessage<List<ToysInfoBean>>toy_search(String name){
        JsonMessage<List<ToysInfoBean>> result = new JsonMessage<>();
        try{
            List<ToysInfoBean> list=toysInfoService.selectByNames(name);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData(list);
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("查询失败！");
        }
        return result;
    }
}
