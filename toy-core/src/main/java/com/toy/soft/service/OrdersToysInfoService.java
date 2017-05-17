package com.toy.soft.service;

import com.toy.soft.entity.OrdersToysInfoBean;
import com.toy.soft.mapper.OrdersToysInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/5/15.
 */
@Service
public class OrdersToysInfoService {
    @Autowired
    private OrdersToysInfoMapper mapper;
    public void addByList(List<OrdersToysInfoBean> list){
        mapper.insert(list);
    }
    public List<OrdersToysInfoBean> findByOrdersId(String ordersId){
        List<OrdersToysInfoBean> list=mapper.findByOrdersId(ordersId);
        return list;
    }
    public List<OrdersToysInfoBean> findByOrdersIdList(List<String> list) {
        List<OrdersToysInfoBean> bean=mapper.findByOrdersIdList(list);
        return bean;
    }
}