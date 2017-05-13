package com.toy.soft.entity;

/**
 * Created by fu on 2017/5/11.
 */
public class CartInfoBean {
    private String id;
    private String user_id;
    private String toys_id;
    private Integer num;
    private ToysInfoBean toysInfoBean;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getToys_id() {
        return toys_id;
    }

    public void setToys_id(String toys_id) {
        this.toys_id = toys_id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public ToysInfoBean getToysInfoBean() {
        return toysInfoBean;
    }

    public void setToysInfoBean(ToysInfoBean toysInfoBean) {
        this.toysInfoBean = toysInfoBean;
    }
}