package com.toy.soft.service;

import com.toy.soft.entity.AddressInfoBean;
import com.toy.soft.mapper.AddressInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/5/14.
 */
@Service
public class AddressInfoService {
    @Autowired
    private AddressInfoMapper mapper;
    public String addAddress(AddressInfoBean addressInfoBean){
        mapper.insert(addressInfoBean);
        String key = addressInfoBean.getId();
        return key;
    }
    public int deleteBykey(String id){
        return mapper.deleteBykey(id);
    }
    public int updateBykey(AddressInfoBean addressInfoBean){
        return mapper.updateBykey(addressInfoBean);
    }
    public List<AddressInfoBean> selectAll(){
        List<AddressInfoBean> list = mapper.select();
        return list;
    }
    public List<AddressInfoBean> selectByUserId(String userId){
        List<AddressInfoBean> list =mapper.selectByUserId(userId);
        return list;
    }
    public AddressInfoBean selectById(String id){
        AddressInfoBean addressInfoBean=mapper.selectById(id);
        return addressInfoBean;
    }
}