<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<html>
<head>
    <title>Title</title>
</head>
<style>
    .ml6 {
        margin-left: 6%;
    }

    .mr6 {
        margin-right: 6%;
    }
</style>
<body>
<%@ include file="/WEB-INF/jsp/modelWindow.jsp" %>
<div style="width: 98%;height:80%;min-height:520px;box-shadow: 1px 1px 1px 2px #d2d6de;border-radius:2px;margin: 10px auto">
    <div id="head" style="height: 70px;width: 100%;text-align: center;position:relative;">
        <div class="btn-group"
             style="width: 95%;height:50%;margin: auto;  position: absolute;  top: 0; left: 0; bottom: 0; right: 0;">
            <shiro:hasPermission name="user:add">
                <button type="button" class="btn btn-default" data-toggle="modal" onclick="showUser_add()">
                    新增
                </button>
            </shiro:hasPermission>
            <shiro:hasPermission name="user:update">
                <button type="button" class="btn btn-default">修改</button>
            </shiro:hasPermission>
            <shiro:hasPermission name="user:delete">
                <button type="button" class="btn btn-default">删除</button>
            </shiro:hasPermission>
        </div>
    </div>
    <table id="example" class="table table-bordered table-striped table-hover"
           style="width: 95%;margin: 10px auto;border-radius: 5px;">
        <thead>
        <tr id="exampletr">
        </tr>
        </thead>
        <tbody>
    </table>
</div>
<%--
<script type="text/javascript" src="js/common.js"/>
--%>
<!--引入css-->
<%--
<link rel="stylesheet" type="text/css" href="css/dataTable/jquery.dataTables.min.css">
--%>
<link rel="stylesheet" type="text/css" href="css/dataTable/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/dataTable/dataTables.bootstrap.css">
<link rel="stylesheet" href="/css/xadmin.css">
<link rel="stylesheet" href="/css/animate.css">


<!--引入JavaScript-->
<script type="text/javascript" language="javascript" src="js/common.js"></script>
<script type="text/javascript" language="javascript" src="js/dataTable/bootstrap.js"></script>
<script type="text/javascript" language="javascript" src="js/dataTable/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="js/dataTable/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="/js/xadmin.js"></script>
<script type="text/javascript" language="javascript" src="js/bootstrap-notify.js"></script>



<!--初始化代码-->
<script type="text/javascript">
    $(document).ready(function () {
        var tableCol = [
            {"uid": "序号"},
            {"username": "帐号"},
            // { "account": "帐号" },
            {"password": "密码"},
            {"status": "状态"},
            {"create_time": "创建时间"}
        ];
        InitTableColums('showUserList', tableCol);
    });
    function showUser_add(){
        var content = '<table><tr><td>'+textHtml('username','帐号',200)+'</td></tr><tr><td>'+textHtml('password','密码',200)+'</td></tr><tr><td>'+selectHtml('status','状态',200)+'</td></tr></table>'
        showModel("新增用户",content,null,"saveUser");
    }
    function saveUser() {
        var param ={
            username:$('#username').val(),
            password:$('#password').val(),
            status:$('#status').val()
        }
        getAjaxData("saveUser",param,callback)
    }
    function callback(data){
        $('#myModal').modal('hide');
        if(data.flag=='true'){
            openAlert(data.msg,'success');
        }else{
            openAlert(data.msg,'danger');
        }
    }
</script>
</body>
</html>
