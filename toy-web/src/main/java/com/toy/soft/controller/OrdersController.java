package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.AddressInfoBean;
import com.toy.soft.entity.OrdersToysInfoBean;
import com.toy.soft.entity.ToysInfoBean;
import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.service.AddressInfoService;
import com.toy.soft.service.OrdersInfoService;
import com.toy.soft.service.ToysInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fu on 2017/5/14.
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private OrdersInfoService ordersInfoService;
    @Autowired
    private ToysInfoService toysInfoService;
    @Autowired
    private AddressInfoService addressInfoService;
    @RequestMapping("/buyData")
    public @ResponseBody
    JsonMessage<String> buyData(@RequestBody  List<OrdersToysInfoBean> list, HttpServletRequest request){
        JsonMessage<String> result = new JsonMessage<>();
        if(request.getSession().getAttribute("user")!=null){
            for(int i=0;i<list.size();i++){
                ToysInfoBean toysInfoBean=toysInfoService.selectById(list.get(i).getToys_id());
                list.get(i).setToysInfoBean(toysInfoBean);
            }
            request.getSession().setAttribute("buyer",list);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData("成功！");
        }else{
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("请先登录！");
        }
        return result;
    }
    @RequestMapping("/buy")
    public String buy(Model model,HttpServletRequest request){
        List<OrdersToysInfoBean> list= (List<OrdersToysInfoBean>) request.getSession().getAttribute("buyer");
        UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
        List<AddressInfoBean> address=addressInfoService.selectByUserId(user.getId());
        model.addAttribute("address",address);
        model.addAttribute("toys",list);
        return "customer/orders";
    }
}