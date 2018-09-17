package com.example.demo.controller;


import com.example.demo.model.PageData;
import com.example.demo.model.User;
import com.example.demo.service.UserService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class HelloController {
    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public String hello() {
        return "index";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("/user_list")
    public String user_list() {
        return "user/user_list";
    }

    @RequestMapping("/showUserList")
    @ResponseBody
    public String showUserList() {
        List<User> userList =  userService.showUserList();
        PageData pd = new PageData();
        pd.setData(userList);
        pd.setiTotalDisplayRecords(10);
        pd.setiTotalRecords(100);
        System.out.println(JSONObject.fromObject(pd).toString());
        return JSONObject.fromObject(pd).toString();
    }

    @RequestMapping("/add")
    public String add(User user){
        return String.valueOf(userService.addUser(user));
    }
}
