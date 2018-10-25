<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/8/31
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript" language="javascript" src="js/common.js"></script>
</head>
<style>
    .li_img{
        width: 30px;
        height: 30px;
    }
    .li_img2{
        width: 20px;
        height: 20px;
    }
</style>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo"><a href="./index.html">X-admin v2.0</a></div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
                <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
                <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                <dd><a href="./login.html">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav" id ="menu_nav">
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='./welcome' frameborder="0" scrolling="no" class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>
</div>
<!-- 底部结束 -->
<script>
    $(function () {
        getMenuTree();
    });
    function getMenuTree(){
        getAjaxData("showModuleListByUser",null,InitMenu);
    }
    function InitMenu(datalist) {
        console.log(datalist);
        for(var i =0;i<datalist.length;i++){
            var data =datalist[i];
            if(data.mparent==0){//拼接第一级
                $('#nav').append('<li id="menuli'+data.mid+'"><a href="javascript:;"><img class="li_img" src="/img/'+data.micon+'.png"><cite>'+data.mname+'</cite><i class="iconfont nav_right">&#xe697;</i></a><ul id="ul'+data.mid+'" class="sub-menu" ></ul></li>')
            }else{//拼接第二级
                $('#ul'+data.mparent).append('<li><a  _href="'+data.murl+'"><img class="li_img2" src="/img/'+data.micon+'.png"><cite>'+data.mname+'</cite></a></li>');
            }
        }
        initLeftNavClick();//xadmin本来加载左边菜单的方法 但是由于数据获取执行速度没有加载 重新加载一遍
    }

</script>
</body>
</html>
