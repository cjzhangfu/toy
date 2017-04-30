package com.toy.soft.entity;

/**
 * Created by fu on 2017/4/4.
 */
public class ToysInfoBean {
    private String id;
    private String name;
    private Integer price;
    private Integer num;
    private String type;
    private String brand;
    private Integer startAges;
    private Integer endAges;
    private String decription;
    private String picture;
    private Integer ishot;

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Integer getStartAges() {
        return startAges;
    }

    public void setStartAges(Integer startAges) {
        this.startAges = startAges;
    }

    public Integer getEndAges() {
        return endAges;
    }

    public void setEndAges(Integer endAges) {
        this.endAges = endAges;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Integer getIshot() {
        return ishot;
    }

    public void setIshot(Integer ishot) {
        this.ishot = ishot;
    }
}
