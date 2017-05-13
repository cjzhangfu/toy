package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.CartInfoBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fu on 2017/5/11.
 */
@MyBatisRepository
public interface CartInfoMapper {
    int insertCart(CartInfoBean cartInfoBean);
    List<CartInfoBean> selectByUserId(String user_id);
    CartInfoBean selectByToysIdAndUserId(@Param("user_id") String user_id,@Param("toys_id") String toys_id);
    int updateBykey(CartInfoBean cartInfoBean);
}