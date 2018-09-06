package com.example.demo.controller;


import com.example.demo.model.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping("/member_list")
    public String member_list() {
        return "member/member_list";
    }

    @RequestMapping("/member_edit")
    public String member_edit() {
        return "member/member_edit";
    }

    @RequestMapping("/member_password")
    public String member_password() {
        return "member/member_password";
    }

    @RequestMapping("/add")
    public String add(User user){
        return String.valueOf(userService.addUser(user));
    }
}
