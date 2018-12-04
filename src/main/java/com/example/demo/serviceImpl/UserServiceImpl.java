package com.example.demo.serviceImpl;

import com.example.demo.dao.UserDao;
import com.example.demo.model.User;
import com.example.demo.service.UserService;
import com.example.demo.utils.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    public int addUser(User user) {
        return  userDao.insert(user);
    };
    public List<User> showUserList(){
        System.out.println("打印则没有使用缓存");
        List<User> userList = userDao.showUserList();
        return  userList;
    }
    public int deleteUser(String ids) {
        if(CommonUtils.isEmpty(ids))return 0;
        String[] idstr = ids.split(",");
        int count=0;
        for (int i =0;i<idstr.length;i++){
            userDao.deleteByPrimaryKey(Integer.parseInt(idstr[i]));
            count++;
        }
        return  count;
    }
    public User selectByPrimaryKey(int uid){
        return userDao.selectByPrimaryKey(uid);
    }
}
