package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Created by fu on 2017/3/20.
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private UserInfoService userInfoService;
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "customer/login";
    }

    @RequestMapping(value="/userLogin",method =RequestMethod.GET)
    public @ResponseBody
    JsonMessage<UserInfoBean> userLogin(String account,String password,HttpServletRequest request){
        Map<String,String> map=new HashMap<>();
        logger.info("参数信息:{}{}",account,password);
        map.put("account",account);
        map.put("password",password);
        JsonMessage<UserInfoBean> jsonMessage=new JsonMessage<>();
        try{
             UserInfoBean userInfoBean=userInfoService.userLogin(map);
            request.getSession().setAttribute("user",userInfoBean);
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData(userInfoBean);
            return jsonMessage;
        }catch(Exception e){
            logger.error(e.getMessage(),e);
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setErrorMsg("登陆失败，账号或者密码错误");
            return jsonMessage;
        }
    }
//    @RequestMapping("/toys_list")
//    public String adminLogin(){
//        System.out.println("11111");
//        return "admin/toys_list";
//    }
    @RequestMapping(value = "/regist",method = RequestMethod.GET)
    public String regist(){
        return "customer/regist";
    }

    @RequestMapping(value="/userRegist",method = RequestMethod.GET)
    public @ResponseBody
    JsonMessage<String> userRegist(UserInfoBean userInfoBean){
        JsonMessage<String> jsonMessage=new JsonMessage<>();
        String currentId= UUID.randomUUID().toString();
        userInfoBean.setId(currentId);
        userInfoBean.setPower(1);
        userInfoBean.setAddress("我家");
        StringBuffer errName = new StringBuffer();
        try {
            userInfoService.userRegist(userInfoBean);
        } catch (Exception e) {
            e.printStackTrace();
            errName.append(userInfoBean.getAccount()+"添加失败"+e.getMessage()+";");
        }
        boolean asd=StringUtils.isEmpty(errName.toString());
        if(StringUtils.isEmpty(errName)){
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("添加成功");
        }else{
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setData(errName.toString());
            jsonMessage.setErrorMsg(errName.toString());
        }
        return jsonMessage;
    }
}
