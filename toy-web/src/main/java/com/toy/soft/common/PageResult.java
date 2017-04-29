package com.toy.soft.common;

/**
 * Created by fu on 2017/3/20.
 */
public class PageResult {
    /**
     * 当前页
     */
    private int curPage;
    /**
     * 总页数
     */
    private int totalPage;
    /**
     * 每页的数量
     */
    private int pageSize;
    /**
     * 总的数量
     */
    private  long total;

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }
}
