package com.vo;

/*
 * 曹富钧 建立的工具类
 * 用于实现数据传递给前端
 *
 * */


public class ResultVo {
    private int code;
    private String msg;
    private long count=0;
    private Object data;
    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public long getCount() {
        return count;
    }
    public void setCount(long l) {
        this.count = l;
    }
    public Object getData() {
        return data;
    }
    public void setData(Object data) {
        this.data = data;
    }
}
