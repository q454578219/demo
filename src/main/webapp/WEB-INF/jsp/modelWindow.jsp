<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/9/29
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<link rel="stylesheet" type="text/css" href="css/dataTable/bootstrap.css">--%>
    <%--<script type="text/javascript" language="javascript" src="js/dataTable/bootstrap.js"></script>--%>
    <style type="text/css">
        table{
            width: 280px;
            margin: 0 auto;
        }
        .fl{
            float: left;
        }
        .modelLabel{
            height:34px;
            width:64px;
            line-height:34px;
        }
        .form-group{
            margin-top: 10px;
        }
    </style>
</head>
<body>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" id="myModalDialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel" style="position: relative">
                    模态框（Modal）标题
                </h4>
            </div>
            <div class="modal-body" id="myModalContent">
                在这里添加一些文本
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button id="btnCommit" type="button" class="btn btn-primary" onclick="">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
<script type="text/javascript">
    function showModel(title,content,width,commitfunction){
        $('#myModal').modal('show');
        $('#myModalLabel').text(title);
        $('#myModalContent').html(content);
        $('#myModalDialog').width(width?width:500);
        $('#btnCommit').attr("onclick",commitfunction+"()");
    }
</script>
</html>
