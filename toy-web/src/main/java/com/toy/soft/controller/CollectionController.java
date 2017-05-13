package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.CollectionInfoBean;
import com.toy.soft.entity.ToysInfoBean;
import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.service.CollectionInfoService;
import com.toy.soft.service.ToysInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by fu on 2017/5/12.
 */
@Controller
@RequestMapping("/collection")
public class CollectionController {
    private Logger logger = LoggerFactory.getLogger(CollectionInfoBean.class);
    @Autowired
    private CollectionInfoService collectionInfoService;
    @Autowired
    private ToysInfoService toysInfoService;
    @RequestMapping(value = "/colAddToys",method = RequestMethod.POST)
    public
    @ResponseBody
    JsonMessage<String> colAddToys(CollectionInfoBean collectionInfoBean, HttpServletRequest request){
        JsonMessage<String> result = new JsonMessage<>();
        if(request.getSession().getAttribute("user")==null){
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("请登录");
        }else{
            String currentId= UUID.randomUUID().toString();
            UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
            collectionInfoBean.setId(currentId);
            collectionInfoBean.setUserid(user.getId());
            try{
                collectionInfoService.addCollection(collectionInfoBean);
                result.setStatus(OperateResult.SUCCESS.toString());
                result.setData("添加成功！");
            }catch(Exception e){
                logger.error(e.getMessage());
                result.setStatus(OperateResult.FALLED.toString());
                result.setData("添加失败！");
            }
        }
        return result;
    }
    @RequestMapping("/collectionData")
    public String collection(HttpServletRequest request,Model model){
       try{
           UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
           List<CollectionInfoBean> list = collectionInfoService.selectByUserId(user.getId());
           List<String> toysId=new ArrayList<>();
           for(int i=0;i<list.size();i++){
               toysId.add(list.get(i).getToysid());
           }
           List<ToysInfoBean> toys=toysInfoService.selectByListToysId(toysId);
           System.out.println(toys.get(0).toString());
           model.addAttribute("toys",toys);
       }catch(Exception e){
           System.out.println(89898);
       }
        return "customer/collection";
    }
}