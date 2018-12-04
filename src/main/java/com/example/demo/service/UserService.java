package com.example.demo.service;

import com.example.demo.model.User;

import java.util.List;

public interface UserService {
    public int addUser(User user);
    public int deleteUser(String ids);
    public List<User> showUserList();
    public User selectByPrimaryKey(int uid);
}
