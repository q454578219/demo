package com.example.demo.controller;


import com.example.demo.model.User;
import com.example.demo.service.UserService;
import com.example.demo.utils.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;


    @RequestMapping("/saveUser")
    @ResponseBody
    public String saveUser(@RequestParam Map<String,Object> map){
        User user = new User();
        user.setUsername((String) map.get("username"));
        user.setPassword((String) map.get("password"));
        user.setStatus(Integer.parseInt((String)map.get("status")));
        int i =userService.addUser(user);
        return CommonUtils.isOperationOk(i);
    }

    @RequestMapping("/getUserById")
    @ResponseBody
    public User getUserById(@RequestParam Map<String,Object> map){
        User user =userService.selectByPrimaryKey(Integer.parseInt((String)map.get("id")) );
        return user;
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public String deleteUser(@RequestParam Map<String,Object> map){
        String ids = (String)map.get("ids");
        int i =userService.deleteUser(ids);
        return CommonUtils.isOperationOk(i);
    }
}