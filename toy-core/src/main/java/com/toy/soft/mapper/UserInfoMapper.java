package com.toy.soft.mapper;

import com.mochasoft.latte.commons.mapper.MyBatisRepository;
import com.toy.soft.entity.UserInfoBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by fu on 2017/3/25.
 */
@MyBatisRepository
public interface UserInfoMapper {
    /**
     * 登陆
     * @param
     * @return
     */
    UserInfoBean userLogin(@Param("account") String account, @Param("password") String pwd);
    /**
     * 查询
     * @param account
     * @return
     */
    UserInfoBean selectByAccount(String account);
    /**
     * 注册
     * @param userInfoBean
     * @return
     */
    int userRegist(UserInfoBean userInfoBean);

    /**
     * 删除
     * @param id
     * @return
     */
    int delectBykey(String id);

    /**
     * 更新方法
     * @param userInfoBean
     * @return
     */
    int updateBykey(UserInfoBean userInfoBean);

    /**
     * 查询所有
     * @return
     */
    List<UserInfoBean> selectAll();

    int updateByAccAndEmail(UserInfoBean userInfoBean);


}