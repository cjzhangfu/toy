package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.OrdersInfoBean;

import java.util.List;

/**
 * Created by fu on 2017/4/12.
 */
@MyBatisRepository
public interface OrdersInfoMapper {
    /**
     * 增加方法
     * @param ordersInfoBean
     * @return
     */
    int insert(OrdersInfoBean ordersInfoBean);

    /**
     * 删除方法
     * @param id
     * @return
     */
    int delectBykey(String id);

    /**
     * 更新方法
     * @param ordersInfoBean
     * @return
     */
    int updateBykey(OrdersInfoBean ordersInfoBean);

    /**
     * 查询方法
     * @return
     */
    List<OrdersInfoBean> select();
    OrdersInfoBean selectByKey(String id);
    List<OrdersInfoBean> selectByUserId(String byer_id);
    List<OrdersInfoBean> selectById(String id);
}
