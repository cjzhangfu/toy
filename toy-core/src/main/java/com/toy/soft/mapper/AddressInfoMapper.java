package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.sun.jndi.cosnaming.IiopUrl;
import com.toy.soft.entity.AddressInfoBean;

import java.util.List;

/**
 * Created by fu on 2017/5/14.
 */
@MyBatisRepository
public interface AddressInfoMapper {
    int insert(AddressInfoBean addressInfoBean);
    int deleteBykey(String key);
    int updateBykey(AddressInfoBean addressInfoBean);
    List<AddressInfoBean> select();
    List<AddressInfoBean> selectByUserId(String mbr_id);
    AddressInfoBean selectById(String id);
}