package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.CollectionInfoBean;

import java.util.List;

/**
 * Created by fu on 2017/4/13.
 */
@MyBatisRepository
public interface CollectionInfoMapper {
    int insert(CollectionInfoBean collectionInfoBean);
    int delectBykey(String id);
    int updateBykey(CollectionInfoBean collectionInfoBean);
    List<CollectionInfoBean> selectAll();
    List<CollectionInfoBean> selectByUserId(String userid);
}
