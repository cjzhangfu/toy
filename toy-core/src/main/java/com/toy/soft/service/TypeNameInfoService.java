package com.toy.soft.service;

import com.toy.soft.mapper.TypeNameInfoMapper;
import com.toy.soft.entity.TypeNameInfoBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/4/6.
 */
@Service
public class TypeNameInfoService {
    @Autowired
    private TypeNameInfoMapper mapper;
    public String addTypeName(TypeNameInfoBean typeNameInfoBean){
        mapper.insert(typeNameInfoBean);
        String key=typeNameInfoBean.getId();
        return key;
    }
    public int delectBykey(String id){
        return mapper.delectBykey(id);
    }
    public int updateTypeName(TypeNameInfoBean typeNameInfoBean){
        return mapper.updateBykey(typeNameInfoBean);
    }
    public List<TypeNameInfoBean> select(){
        List<TypeNameInfoBean> list=mapper.select();
        return list;
    }
    public List<TypeNameInfoBean> selectByName(String types){
        return mapper.selectByName(types);
    }
}
