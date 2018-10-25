package com.example.demo.dao;

import com.example.demo.model.Module;
import com.example.demo.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface ModuleDao {

    int insert(@Param("menu") Module menu);

    User queryModule(String name);

    List<Module> showModuleList();

    List<Module> showModuleListByUser(int uid);

}
