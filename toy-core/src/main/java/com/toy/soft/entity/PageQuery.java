package com.toy.soft.entity;

/**
 * 分页查询实体类
 * Created by fu on 2017/4/3.
 */
public class PageQuery {
    /**
     * 每页多少条数据
     */
    private Integer  pageSize;
    /**
     * 当前是第几页
     */
    private Integer  pageNum;

    public Integer getPageSize() {
        return (null==pageSize)? 10:pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageNum() {
        return (null==pageNum)? 1:pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }
}
