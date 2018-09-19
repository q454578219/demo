package com.example.demo.dao;

import com.example.demo.model.User;
import org.apache.ibatis.annotations.*;


@Mapper
public interface UserDao{

    int insert(@Param("user") User user);

    User queryUserName(String name);

//    List<User> showUserList();
}
