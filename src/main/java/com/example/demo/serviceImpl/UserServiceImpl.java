package com.example.demo.serviceImpl;

import com.example.demo.dao.UserDao;
import com.example.demo.model.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    public int addUser(User user){
        return  userDao.insertUser(user);
    };

    public List<User> showUserList(){
        return  userDao.showUserList();
    }
}
