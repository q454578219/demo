package com.example.demo.utils;

import com.example.demo.model.Message;
import net.sf.json.JSONObject;


public class CommonUtils {
    public static String isOperationOk(int i){
        String rsStr= new String();
        if(i>0){
            rsStr = JSONObject.fromObject(new Message("操作成功",true)).toString();
        }else{
            rsStr = JSONObject.fromObject(new Message("操作失败",false)).toString();
        }
        return rsStr;
    }
    public static Boolean isEmpty(String param){
        if(param==null||param=="null"||param==""||param=="undefined"){
            return true;
        }else{
            return false;
        }
    }
}
