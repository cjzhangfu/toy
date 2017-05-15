package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.AddressInfoBean;
import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.service.AddressInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.UUID;

/**
 * Created by fu on 2017/5/14.
 */
@Controller
@RequestMapping("/address")
public class AddressController {
    protected Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private AddressInfoService addressInfoService;
    @RequestMapping("/addressInfo")
    public String addressInfo(HttpServletRequest request,Model model){
        UserInfoBean user = (UserInfoBean) request.getSession().getAttribute("user");
        List<AddressInfoBean> list = addressInfoService.selectByUserId(user.getId());
        model.addAttribute("address",list);
        return "customer/address";
    }
    @RequestMapping("/address_add")
    public String address_add(){
        return "customer/address_add";
    }
    @RequestMapping(value = "addressInfoAdd",method = RequestMethod.POST)
    public @ResponseBody
    JsonMessage<String> addressInfoAdd(AddressInfoBean addressInfoBean,HttpServletRequest request){
        JsonMessage<String> result = new JsonMessage<>();
        String currentId= UUID.randomUUID().toString();
        UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
        addressInfoBean.setId(currentId);
        addressInfoBean.setMbr_id(user.getId());
        try{
            addressInfoService.addAddress(addressInfoBean);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("添加地址信息成功！");
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("添加失败！");
        }
        return result;
    }
    @RequestMapping(value = "address_del",method = RequestMethod.POST)
    public @ResponseBody JsonMessage<String> address_del(String id){
        JsonMessage<String> result = new JsonMessage<>();
        try{
            addressInfoService.deleteBykey(id);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("删除成功！");
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("删除失败！");
        }
        return result;
    }
    @RequestMapping("/address_edit")
    public String address_edit(String id,Model model){
        AddressInfoBean addressInfoBean=addressInfoService.selectById(id);
        model.addAttribute("address",addressInfoBean);
        return "customer/address_update";
    }
    @RequestMapping(value = "/addressInfoUpdate",method = RequestMethod.POST)
    public @ResponseBody JsonMessage<String> addressInfoUpdate(AddressInfoBean addressInfoBean,HttpServletRequest request){
        JsonMessage<String> result=new JsonMessage<>();
        UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
        addressInfoBean.setMbr_id(user.getId());
        try{
            addressInfoService.updateBykey(addressInfoBean);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("修改成功");
        }catch(Exception e){
            logger.error(e.getMessage());
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("修改失败！");
        }
        return result;
    }
}
