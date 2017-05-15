package com.toy.soft.controller;

import com.toy.soft.service.OrdersInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by fu on 2017/5/14.
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private OrdersInfoService ordersInfoService;
    @RequestMapping("/buy")
    public String buy(HttpServletRequest request){
        return "customer/orders";
    }
}