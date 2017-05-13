package com.toy.soft.service;

import com.toy.soft.entity.CartInfoBean;
import com.toy.soft.mapper.CartInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/5/11.
 */
@Service
public class CartInfoService {
    @Autowired
    private CartInfoMapper mapper;

    /**
     * 加入购物车
     */
    public String addCart(CartInfoBean cartInfoBean){
        mapper.insertCart(cartInfoBean);
        String key =cartInfoBean.getId();
        return key;
    }
    public List<CartInfoBean> selectByUserId(String user_id){
        return mapper.selectByUserId(user_id);
    }
    public CartInfoBean selectByToysIdAndUserId(String user_id,String toys_id){
        return mapper.selectByToysIdAndUserId(user_id,toys_id);
    }
    public int updateBykey(CartInfoBean cartInfoBean){
        return mapper.updateBykey(cartInfoBean);
    }
}