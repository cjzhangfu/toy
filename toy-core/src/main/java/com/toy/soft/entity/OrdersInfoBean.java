package com.toy.soft.entity;

import java.util.Date;

/**
 * Created by fu on 2017/4/12.
 */
public class OrdersInfoBean {
    private String id;
    private String number;
    private String byer_id;
    private Integer total_amount;
    private Integer total_price;
    private Integer payment_price;
    private String remark;
    private Date creat_time;
    private Date payment_time;
    private String status;
    private String address_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getByer_id() {
        return byer_id;
    }

    public void setByer_id(String byer_id) {
        this.byer_id = byer_id;
    }

    public Integer getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(Integer total_amount) {
        this.total_amount = total_amount;
    }

    public Integer getTotal_price() {
        return total_price;
    }

    public void setTotal_price(Integer total_price) {
        this.total_price = total_price;
    }

    public Integer getPayment_price() {
        return payment_price;
    }

    public void setPayment_price(Integer payment_price) {
        this.payment_price = payment_price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Date getCreat_time() {
        return creat_time;
    }

    public void setCreat_time(Date creat_time) {
        this.creat_time = creat_time;
    }

    public Date getPayment_time() {
        return payment_time;
    }

    public void setPayment_time(Date payment_time) {
        this.payment_time = payment_time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress_id() {
        return address_id;
    }

    public void setAddress_id(String address_id) {
        this.address_id = address_id;
    }
}
