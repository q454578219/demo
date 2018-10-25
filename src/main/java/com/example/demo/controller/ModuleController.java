package com.example.demo.controller;


import com.example.demo.model.Module;
import com.example.demo.model.PageData;
import com.example.demo.model.User;
import com.example.demo.service.ModuleService;
import com.example.demo.service.UserService;
import com.example.demo.serviceImpl.RedisService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class ModuleController {

    @Autowired
    private ModuleService moduleService;

    @RequestMapping("/showModuleList")
    @ResponseBody
    public String showModuleList(){
        List<Module> moduleList= moduleService.showModuleList();
        return JSONArray.fromObject(moduleList).toString();
    }

    @RequestMapping("/showModuleListByUser")
    @ResponseBody
    public String showModuleListByUser(HttpSession session){
        User user = (User)session.getAttribute("user");
        if(user==null)return null;
        List<Module> moduleList= moduleService.showModuleListByUser(user.getUid());
        return JSONArray.fromObject(moduleList).toString();
    }
}