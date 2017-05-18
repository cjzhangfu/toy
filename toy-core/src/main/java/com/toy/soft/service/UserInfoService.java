package com.toy.soft.service;


import com.toy.soft.entity.UserInfoBean;
import com.toy.soft.exception.ToysException;
import com.toy.soft.mapper.UserInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by fu on 2017/3/25.
 */
@Service
public class UserInfoService {
    @Autowired
    private UserInfoMapper mapper;

    /**
     * 登陆验证
     * @param map
     * @return
     * @throws ToysException
     */
    public UserInfoBean userLogin(Map<String,String> map) throws ToysException {
        UserInfoBean user = mapper.userLogin(map.get("account"), map.get("password"));
        if(user == null){
            throw new ToysException("账号或者密码错误");
        }
        return user;
    }

    /**
     * 注册
     * @param infoBean
     * @return
     * @throws ToysException
     */
    public String userRegist(UserInfoBean infoBean) throws ToysException {
        if(null==infoBean){
            throw new ToysException("参数为空");
        }
        if(StringUtils.isEmpty(infoBean.getAccount())){
            throw  new ToysException("账号为空");
        }
        if(StringUtils.isEmpty(infoBean.getPassword())){
            throw  new ToysException("密码为空");
        }
        if(StringUtils.isEmpty(infoBean.getId())){
            throw new ToysException("id为空");
        }
        UserInfoBean flag=mapper.selectByAccount(infoBean.getAccount());
        if(flag!=null){
            throw  new ToysException("已经存在");
        }
        String key=infoBean.getId();
        mapper.userRegist(infoBean);
        return key;
    }

    /**
     * 查询所有
     * @return
     */
    public List<UserInfoBean> selectAll(){
        List<UserInfoBean> list =mapper.selectAll();
        return list;
    }

    /**
     * 根据id删除
     * @param id
     * @return
     */
    public int deleteById(String id) throws ToysException {
        if(id == null){
            throw new ToysException("id is null");
        }
        return mapper.delectBykey(id);
    }

    /**
     * 更改方法
     * @param userInfoBean
     * @return
     * @throws ToysException
     */
    public int update(UserInfoBean userInfoBean) throws ToysException {
        return mapper.updateBykey(userInfoBean);
    }

    /**
     * 按照账户查询
     * @param account
     * @return
     */
    public UserInfoBean selectByAccount(String account) throws ToysException {
        UserInfoBean userInfoBean=mapper.selectByAccount(account);
        if(userInfoBean==null){
            throw new ToysException("暂无此数据！");
        }
        return userInfoBean;
    }
    public int updateByAccAndEmail(UserInfoBean userInfoBean){
        return mapper.updateByAccAndEmail(userInfoBean);
    }
}