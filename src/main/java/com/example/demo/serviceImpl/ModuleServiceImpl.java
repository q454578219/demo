package com.example.demo.serviceImpl;

import com.example.demo.dao.ModuleDao;
import com.example.demo.dao.UserDao;
import com.example.demo.model.Module;
import com.example.demo.model.User;
import com.example.demo.service.ModuleService;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModuleServiceImpl implements ModuleService {

    @Autowired
    private ModuleDao moduleDao;
    public int addModule(Module module){
        return  moduleDao.insert(module);
    };
    public List<Module> showModuleList(){
        List<Module> moduleList = moduleDao.showModuleList();
        return  moduleList;
    }
    public List<Module> showModuleListByUser(int uid){
        List<Module> moduleList = moduleDao.showModuleListByUser(uid);
        return  moduleList;
    }

}
