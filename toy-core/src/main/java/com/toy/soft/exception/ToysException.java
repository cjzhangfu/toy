package com.toy.soft.exception;

/**
 * Created by fu on 2017/3/27.
 */
public class ToysException extends Exception{
    public ToysException(){super();}
    public ToysException(String message){super(message);}
    public ToysException(Throwable cause){super(cause);}
    public ToysException(String message, Throwable cause){super(message,cause);}
}
