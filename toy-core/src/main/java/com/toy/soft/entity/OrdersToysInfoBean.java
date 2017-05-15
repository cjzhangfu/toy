package com.toy.soft.entity;

import java.util.List;

/**
 * Created by fu on 2017/5/15.
 */
public class OrdersToysInfoBean {
    private String id;
    private String toys_id;
    private String orders_id;
    private Integer number;
    private ToysInfoBean toysInfoBean;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getToys_id() {
        return toys_id;
    }

    public void setToys_id(String toys_id) {
        this.toys_id = toys_id;
    }

    public String getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(String orders_id) {
        this.orders_id = orders_id;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public ToysInfoBean getToysInfoBean() {
        return toysInfoBean;
    }

    public void setToysInfoBean(ToysInfoBean toysInfoBean) {
        this.toysInfoBean = toysInfoBean;
    }
}