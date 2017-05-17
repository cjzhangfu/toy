package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.ToysInfoBean;

import java.util.List;

/**
 * Created by fu on 2017/4/4.
 */
@MyBatisRepository
public interface ToysInfoMapper {
    /**
     * 增加
     * @param toysInfoBean
     * @return
     */
    int insert(ToysInfoBean toysInfoBean);

    /**
     * 删除方法
     * @param id
     * @return
     */
    int delectBykey(String id);

    /**
     * 更新方法
     * @param toysInfoBean
     * @return
     */
    int updateBykeys(ToysInfoBean toysInfoBean);

    /**
     * 分页查询
     * @return
     *
     */
    List<ToysInfoBean> selectBypage();

    /**
     * 通过id查询
     * @return
     */
    ToysInfoBean selectById(String id );

    /**
     * 通过类型分页查询
     * @return
     */
    List<ToysInfoBean> selectByTypepage(String type);
    /**
     * 查询全部
     */
    List<ToysInfoBean> selectAll();
    /**
     * 根据玩具名称查询
     */
    List<ToysInfoBean> selectByNames(String name);
    List<ToysInfoBean> selectByListToysId(List<String> toysId);
    /**
     * 根据玩具名称或者玩具品牌模糊查询
     */
    List<ToysInfoBean> selectMo(String types);

}
