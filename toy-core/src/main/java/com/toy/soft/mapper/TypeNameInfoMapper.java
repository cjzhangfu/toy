package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.TypeNameInfoBean;

import java.util.List;

/**
 * Created by fu on 2017/4/6.
 */
@MyBatisRepository
public interface TypeNameInfoMapper {
    /**
     * 增加方法
     * @param typeNameInfoBean
     * @return
     */
    int insert(TypeNameInfoBean typeNameInfoBean);

    /**
     * 删除方法
     * @param id
     * @return
     */
    int delectBykey(String id);

    /**
     * 更新方法
     * @param typeNameInfoBean
     * @return
     */
    int updateBykey(TypeNameInfoBean typeNameInfoBean);

    /**
     * 查询方法
     * @return
     */
    List<TypeNameInfoBean> select();
    List<TypeNameInfoBean> selectByName(String types);
}
