package com.toy.soft.common;

/**
 * Created by fu on 2017/3/20.
 */
public class JsonMessage<T> {
    /**
     * 操作状态
     */
    private String status;
    /**
     *错误信息
     */
    private String errorMsg;
    /**
     * 错误编码
     */
    private String errorCode;
    /**
     * 返回的对象实体
     */
    private T data;
    /**
     * 分页
     */
    private PageResult page;

    @Override
    public String toString() {
        return "JsonMessage{" +
                "status='" + status + '\'' +
                ", errorMsg='" + errorMsg + '\'' +
                ", errorCode='" + errorCode + '\'' +
                ", data=" + data +
                ", page=" + page +
                '}';
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public PageResult getPage() {
        return page;
    }

    public void setPage(PageResult page) {
        this.page = page;
    }
}
