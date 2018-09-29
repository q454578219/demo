package com.example.demo.model;

import java.util.Set;

//功能
public class Module {
    private Integer mid;

    private String mname;

    private String mcode;

    private String murl;

    private String micon;

    private Integer mstatus;

    private String mremark;

    private Integer morder;

    private Integer mparent;

    private Set<Role> roles;

    public Module(Integer mid, String mname) {
        this.mid = mid;
        this.mname = mname;
    }

    public Module() {
        super();
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMcode() {
        return mcode;
    }

    public void setMcode(String mcode) {
        this.mcode = mcode;
    }

    public String getMurl() {
        return murl;
    }

    public void setMurl(String murl) {
        this.murl = murl;
    }

    public String getMicon() {
        return micon;
    }

    public void setMicon(String micon) {
        this.micon = micon;
    }

    public Integer getMstatus() {
        return mstatus;
    }

    public void setMstatus(Integer mstatus) {
        this.mstatus = mstatus;
    }

    public String getMremark() {
        return mremark;
    }

    public void setMremark(String mremark) {
        this.mremark = mremark;
    }

    public Integer getMorder() {
        return morder;
    }

    public void setMorder(Integer morder) {
        this.morder = morder;
    }

    public Integer getMparent() {
        return mparent;
    }

    public void setMparent(Integer mparent) {
        this.mparent = mparent;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

}
