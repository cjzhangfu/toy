package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.exception.ToysException;
import com.toy.soft.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by fu on 2017/4/25.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private UserInfoService userInfoService;

    /**
     * 获取人员列表
     * @param model
     * @return
     */
    @RequestMapping("/admin-list")
    public String adminList(Model model){
        List<UserInfoBean> list =userInfoService.selectAll();
        model.addAttribute("adminlist",list);
        logger.info("参数信息:{}",list.toString());
        return "admin/admin_list";
    }
    @RequestMapping(value="/adminDelete",method = RequestMethod.POST)
    /**
     * 人员删除
     */
    public
    @ResponseBody JsonMessage<String> adminDelete(String userId){
        logger.info("参数名称>>>>>{}",userId);
        JsonMessage<String> jsonMessage = new JsonMessage<>();
        try {
            userInfoService.deleteById(userId);
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("删除成功");
        }catch(Exception e){
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setErrorMsg("删除失败");
        }
        logger.info("结果》》》{}",jsonMessage.toString());
        return jsonMessage;
    }

    /**
     * 更新页面
     * @param id
     * @param account
     * @param password
     * @param address
     * @param power
     * @param email
     * @param model
     * @return
     */
    @RequestMapping(value = "admin_update",method = RequestMethod.GET)
    public String adminUpdate(String id,String account,String password,String address,String power,String email,Model model){
        Map<String,String> map = new HashMap<>();
        map.put("id",id);
        map.put("account",account);
        map.put("password",password);
        map.put("power",power.trim());
        logger.info("参数{}",power);
        logger.info("参数{}",account);
        map.put("address",address);
        map.put("email",email);
        model.addAttribute("maps",map);
        return "/admin/admin_update";
    }
    @RequestMapping(value = "update",method = RequestMethod.POST)
    /**
     * 更新用户
     */
    public
    @ResponseBody JsonMessage<String> update(UserInfoBean userInfoBean){
        logger.info("参数名称》》》{}",userInfoBean.toString());
        JsonMessage<String> jsonMessage=new JsonMessage<>();
        try {
            userInfoService.update(userInfoBean);
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("更新成功！");
        } catch (ToysException e) {
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setErrorMsg("更新失败！");
            e.printStackTrace();
        }
        return jsonMessage;
    }
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(){
        return "/admin/admin_add";
    }
    @RequestMapping(value = "/admin_add",method = RequestMethod.POST)
    public
    @ResponseBody JsonMessage<String> admin_add(UserInfoBean userInfoBean){
        JsonMessage<String> jsonMessage=new JsonMessage<>();
        String currentId= UUID.randomUUID().toString();
        userInfoBean.setId(currentId);
        StringBuffer errsName = new StringBuffer();
        try {
            userInfoService.userRegist(userInfoBean);
        } catch (ToysException e) {
            e.printStackTrace();
            errsName.append(userInfoBean.getAccount()+"添加失败"+e.getMessage()+";");
        }
        if(StringUtils.isEmpty(errsName.toString())){
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData("添加成功");
        }else{
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setData(errsName.toString());
            jsonMessage.setErrorMsg(errsName.toString());
        }
        return jsonMessage;
    }
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public
    @ResponseBody JsonMessage<UserInfoBean> search(String account){
        logger.info("参数》》》{}",account);
        JsonMessage<UserInfoBean> jsonMessage=new JsonMessage<>();
        try {
            UserInfoBean userInfoBean=userInfoService.selectByAccount(account);
            jsonMessage.setStatus(OperateResult.SUCCESS.toString());
            jsonMessage.setData(userInfoBean);
        } catch (Exception e) {
            e.printStackTrace();
            jsonMessage.setStatus(OperateResult.FALLED.toString());
            jsonMessage.setErrorMsg(e.getMessage());
        }
        return jsonMessage;
    }
}