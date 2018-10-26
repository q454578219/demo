package com.example.demo.model;

public class Message {

    public  Message(String msg,Boolean flag){
        this.msg=msg;
        this.flag=flag;
    }

    private String msg;

    private Boolean flag;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Boolean getFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }
}
