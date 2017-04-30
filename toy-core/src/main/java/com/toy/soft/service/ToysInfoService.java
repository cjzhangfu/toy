package com.toy.soft.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.toy.soft.mapper.ToysInfoMapper;
import com.toy.soft.entity.PageQuery;
import com.toy.soft.entity.ToysInfoBean;
import com.toy.soft.exception.ToysException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by fu on 2017/4/5.
 */
@Service
public class ToysInfoService {
    @Autowired
    private ToysInfoMapper mapper;
    public String addToys(ToysInfoBean toysInfoBean) throws ToysException {
        mapper.insert(toysInfoBean);
        String key = toysInfoBean.getId();
        return key;
    }
    public int delectBykey(String id){
        return mapper.delectBykey(id);
    }
    public int updateToys(ToysInfoBean toysInfoBean){
        return mapper.updateBykeys(toysInfoBean);
    }
    public PageInfo<ToysInfoBean> selectByPage(PageQuery pq){
        int pageNum=pq.getPageNum();
        int pageSize=pq.getPageSize();
        PageHelper.startPage(pageNum,pageSize);
        List<ToysInfoBean> list=mapper.selectBypage();
        return new PageInfo<ToysInfoBean>(list);
    }
    public ToysInfoBean selectById(String id ){
        ToysInfoBean toysInfoBean=mapper.selectById(id);
        return toysInfoBean;
    }
    public PageInfo<ToysInfoBean> selectByTypepage(PageQuery paq,String type){
        int pageNum=paq.getPageNum();
        int pageSize=paq.getPageSize();
        PageHelper.startPage(pageNum,pageSize);
        List<ToysInfoBean> list=mapper.selectByTypepage(type);
        return new PageInfo<ToysInfoBean>(list);
    }
}
