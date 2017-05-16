package com.toy.soft.controller;

import com.toy.soft.common.JsonMessage;
import com.toy.soft.common.OperateResult;
import com.toy.soft.entity.*;
import com.toy.soft.service.AddressInfoService;
import com.toy.soft.service.OrdersInfoService;
import com.toy.soft.service.OrdersToysInfoService;
import com.toy.soft.service.ToysInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
    @Autowired
    private OrdersToysInfoService infoService;
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
    @RequestMapping(value = "/payFor",method = RequestMethod.POST)
    public
    @ResponseBody JsonMessage<Integer> payFor(@RequestBody OrdersInfoBean ordersInfoBean,HttpServletRequest request){
        JsonMessage<Integer> result = new JsonMessage<>();
        try{
        String currentId= UUID.randomUUID().toString();
        UserInfoBean user= (UserInfoBean) request.getSession().getAttribute("user");
        String numbers=new Date(System.currentTimeMillis()).toString();
        ordersInfoBean.setId(currentId);
        ordersInfoBean.setNumber(numbers);
        ordersInfoBean.setByer_id(user.getId());
        ordersInfoBean.setCreat_time(new Date());
        ordersInfoBean.setStatus("未支付");
            List<OrdersToysInfoBean> contant=new ArrayList<>();
            for(int i=0;i<ordersInfoBean.getList().size();i++){
                OrdersToysInfoBean infoBean=new OrdersToysInfoBean();
                String current= UUID.randomUUID().toString();
                infoBean.setId(current);
                infoBean.setOrders_id(currentId);
                infoBean.setToys_id(ordersInfoBean.getList().get(i).getId());
                infoBean.setNumber(ordersInfoBean.getList().get(i).getToysNum());
                contant.add(infoBean);
            }
            infoService.addByList(contant);
            result.setStatus(OperateResult.SUCCESS.toString());
            result.setData(ordersInfoBean.getTotal_price());
        }catch(Exception e){
            result.setStatus(OperateResult.FALLED.toString());
            result.setErrorMsg("提交订单失败！");
        }
        return result;
    }
}