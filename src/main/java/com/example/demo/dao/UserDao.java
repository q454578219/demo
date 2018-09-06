package com.example.demo.dao;

import com.example.demo.model.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserDao{

    int insertUser(@Param("user") User user);

    User findByName(String name);

    List<User> showUserList();
}
