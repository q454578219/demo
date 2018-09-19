<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .ml6{
        margin-left: 6%;
    }
    .mr6{
        margin-right: 6%;
    }
</style>
<body>
<div style="width: 98%;height:80%;min-height:520px;box-shadow: 1px 1px 1px 2px #d2d6de;border-radius:2px;margin: 10px auto" >
    <table id="example"  class="table table-bordered table-striped table-hover" style="width: 95%;margin: 10px auto;border-radius: 5px;">
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

<!--引入JavaScript-->
<script type="text/javascript" language="javascript" src="js/common.js"></script>
<script type="text/javascript" language="javascript" src="js/dataTable/bootstrap.js"></script>
<script type="text/javascript" language="javascript" src="js/dataTable/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="js/dataTable/dataTables.bootstrap.js"></script>


<!--初始化代码-->
<script type="text/javascript">
    $(document).ready(function() {
        var tableCol=[
            { "id": "序号" },
            { "name": "姓名" },
            { "account": "帐号" },
            { "password": "密码" },
            { "create_time": "创建时间" },
            { "status": "状态" }
        ];
        InitTableColums('showUserList',tableCol);
    });
</script>
</body>
</html>
