package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.OrdersToysInfoBean;

import java.util.List;

/**
 * Created by fu on 2017/5/15.
 */
@MyBatisRepository
public interface OrdersToysInfoMapper {
    int insert(List<OrdersToysInfoBean> list);
    List<OrdersToysInfoBean> findByOrdersId(String orders_id);
    List<OrdersToysInfoBean> findByOrdersIdList(List<String> list);
}
