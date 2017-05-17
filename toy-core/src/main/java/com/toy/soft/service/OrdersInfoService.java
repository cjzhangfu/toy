package com.toy.soft.service;

import com.toy.soft.mapper.OrdersInfoMapper;
import com.toy.soft.entity.OrdersInfoBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/4/13.
 */
@Service
public class OrdersInfoService {
    @Autowired
    private OrdersInfoMapper mapper;
    public String addOrders(OrdersInfoBean ordersInfoBean){
        mapper.insert(ordersInfoBean);
        String key = ordersInfoBean.getId();
        return key;
    }
    public int delectOrders(String id){
        return mapper.delectBykey(id);
    }
    public int updateOrders(OrdersInfoBean ordersInfoBean){
        return mapper.updateBykey(ordersInfoBean);
    }
    public List<OrdersInfoBean> select(){
        return mapper.select();
    }
    public OrdersInfoBean selectByKey(String key){
        return mapper.selectByKey(key);
    }
    public List<OrdersInfoBean> selectByUserId(String byer_id){
        return mapper.selectByUserId(byer_id);
    }
}
