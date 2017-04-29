package com.toy.soft.common;

/**
 * Created by fu on 2017/3/20.
 */
public enum  OperateResult {
    SUCCESS("success",1),FALLED("failed",0);
    private String text;
    private int value;
    private OperateResult( String text,int value) {
        this.text=text;
        this.value=value;
    }

    @Override
    public String toString() {
        return text;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
