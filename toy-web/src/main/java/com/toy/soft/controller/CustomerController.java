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

    /**
     * 退出登录
     * @param request
     * @return
     */
    @RequestMapping(value = "/loginOut",method = RequestMethod.GET)
    public
    @ResponseBody JsonMessage<String> loginOut(HttpServletRequest request){
        request.getSession().invalidate();
        JsonMessage<String> result=new JsonMessage<>();
        result.setStatus(OperateResult.SUCCESS.toString());
        result.setData("成功");
        return result;
    }

    /**
     * 切换账户
     * @return
     */
    @RequestMapping("/changeAccount")
    public String changeAccount(HttpServletRequest request){
        request.getSession().invalidate();
        return "customer/login";
    }
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
        userInfoBean.setPower(2);
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
    @RequestMapping("forget")
    public String forget(){
        return "customer/forgetPassword1";
    }
    @RequestMapping(value = "forgetPassword",method = RequestMethod.POST)
    public @ResponseBody JsonMessage<String> forgetPassword(UserInfoBean userInfoBean){
        JsonMessage<String> result= new JsonMessage<>();
        try{
            UserInfoBean user=userInfoService.selectByAccount(userInfoBean.getAccount());
            user.setPassword(userInfoBean.getPassword());
            user.setEmail(userInfoBean.getEmail());
            userInfoService.updateByAccAndEmail(user);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("修改密码成功");
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("修改密码失败");
        }
        return result;
    }
}
