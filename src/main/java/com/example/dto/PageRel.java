package com.example.dto;

/**
 *  页面返回对象
 */
public class PageRel<T> {
    private int code;
    private String message;
    private T rel;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getRel() {
        return rel;
    }

    public void setRel(T rel) {
        this.rel = rel;
    }
}
