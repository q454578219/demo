package com.example.demo.model;


import com.example.demo.utils.DateUtils;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
//用户
public class User implements Serializable{

    private Integer uid;

    private String username;

    private String password;

    private Integer status;

    private String create_time;


    private Set<Role> roles = new HashSet<>();


    public User(Integer uid, String username, String password,Integer status,String create_time) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.status = status;
        this.create_time = create_time;
    }

    public User() {
        super();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

}
