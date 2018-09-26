package com.example.demo.controller;


import com.example.demo.model.PageData;
import com.example.demo.model.User;
import com.example.demo.service.UserService;
import com.example.demo.serviceImpl.RedisService;
import net.sf.json.JSONObject;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class HelloController {
    @Autowired
    private UserService userService;

    @Autowired
    private RedisService redisService;

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
        PageData pd = new PageData();
        String key1 = "hello1";
        Object a = redisService.get(key1);
        System.out.println(a);
        if (a != null) {
            return a.toString();
        }
        List<User> userList = userService.showUserList();
        pd = new PageData();
        pd.setData(userList);
        pd.setiTotalDisplayRecords(10);
        pd.setiTotalRecords(100);
        redisService.set(key1, JSONObject.fromObject(pd).toString());
        return JSONObject.fromObject(pd).toString();
    }

    @RequestMapping("/add")
    public String add(User user) {
        return String.valueOf(userService.addUser(user));
    }

    @RequestMapping("/a")
    public String a() {
        return "a";
    }

    @RequestMapping("/loginUser")
    public String loginUser(String username, String password, HttpSession session) {
        //授权认证
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        try {
            //完成登录
            subject.login(usernamePasswordToken);
            //获得用户对象
            User user = (User) subject.getPrincipal();
            //存入session
            session.setAttribute("user", user);
            return "index";
        } catch (Exception e) {
            return "login";//返回登录页面
        }

    }

    @RequestMapping("/logout")
    public String logOut(HttpSession session) {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        session.removeAttribute("user");
        return "login";
    }

    @RequestMapping("/user_add")
    public String user_add () {
        return "user/user_add";
    }


    @RequestMapping("/user_add_save")
    @ResponseBody
    public String user_add_save(@RequestParam Map<String,Object> map){
//        userService.addUser(user);
        return JSONObject.fromObject("保存成功").toString();
    }
}