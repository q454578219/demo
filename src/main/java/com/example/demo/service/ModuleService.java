package com.example.demo.service;

import com.example.demo.model.Module;

import java.util.List;

public interface ModuleService {
    public int addModule(Module module);
    public List<Module> showModuleList();
    public List<Module> showModuleListByUser(int uid);
}
