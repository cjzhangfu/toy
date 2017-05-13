package com.toy.soft.service;

import com.toy.soft.mapper.CollectionInfoMapper;
import com.toy.soft.entity.CollectionInfoBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/4/13.
 */
@Service
public class CollectionInfoService {
    @Autowired
    private CollectionInfoMapper mapper;
    public String addCollection(CollectionInfoBean collectionInfoBean){
        mapper.insert(collectionInfoBean);
        String key = collectionInfoBean.getId();
        return key;
    }
    public int deleteBykey(String id){
        return mapper.delectBykey(id);
    }
    public int updateBykey(CollectionInfoBean collectionInfoBean){
        return mapper.updateBykey(collectionInfoBean);
    }
    public List<CollectionInfoBean> selectAll(){
        List<CollectionInfoBean> list =mapper.selectAll();
        return list;
    }
    public List<CollectionInfoBean> selectByUserId(String userid){
        List<CollectionInfoBean> list = mapper.selectByUserId(userid);
        return list;
    }
}
