package com.example.demo.dao;

import com.example.demo.model.User;
import org.apache.ibatis.annotations.*;

import java.util.List;


@Mapper
public interface UserDao{

    int insert( User user);

    int deleteByPrimaryKey(int uid);

    User queryUserName(String name);

    List<User> showUserList();

    User selectByPrimaryKey(int uid);
}
