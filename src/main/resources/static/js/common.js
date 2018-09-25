document.write("<script type=\"text/javascript\" src=\"js/jquery-3.3.1.js\"></script>");
var columNameList=[];
var columChinaNameList=[];
function InitTableColums(url,data){
    for(var i=0;i<data.length;i++){
        for(var key in data[i]){
            var o = new Object();
            o.data  = key;
            columNameList.push(o);
            o = new Object();
            o.data = data[i][key];
            columChinaNameList.push(o);
        }
    }
    console.log(getRealPath()+url);
    $('#example').dataTable({
        ajax:getRealPath()+url,
        ordering: false, // 禁止排序
        searching: false,     // 搜索框
        bLengthChange: false, //显示每页大小的下拉框（显示一个每页长度的选择条（需要分页器支持））
        bServerSide:true,//后端分页开启
        fnHeaderCallback: function (nHead, aData, iStart, iEnd, aiDisplay) {
            var tablehead;
            for(var i=0;i<columChinaNameList.length;i++){
                tablehead+="<th>"+columChinaNameList[i].data+"</th>";
            }
            $("#example tr:first").html(tablehead);
        },
        columns:columNameList
    });
    $("#example tr:eq(1)").remove();
    $('#example_info').addClass('ml6');
    $(".dataTables_paginate").css('margin','0 4% 0 0');
    $('#example_filter').css('margin','20px 5%');
}
function getAjaxData(url) {
    $.ajax({
        url: getRealPath()+url,
        type: "POST",
        dataType: "json", // 指定服务器返回的数据类型
        success: function (data) {
            return data;
        }, error: function () {
            alert('error');
        }
    });
}

function getRealPath() {

    //获取当前网址，如： http://localhost:8083/myproj/view/my.jsp

    var curWwwPath = window.document.location.href;

    //获取主机地址之后的目录，如： myproj/view/my.jsp

    var pathName = window.document.location.pathname;

    var pos = curWwwPath.indexOf(pathName);

    //获取主机地址，如： http://localhost:8083

    var localhostPaht = curWwwPath.substring(0, pos);

    //获取带"/"的项目名，如：/myproj

    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

    //得到了 http://localhost:8083/myproj

    var realPath = localhostPaht + projectName;

    return (realPath)+'/';

}
function timestampToStr(timestamp) {
    var d = new Date(timestamp);    //根据时间戳生成的时间对象
    var date = (d.getFullYear()) + "-" +
        (d.getMonth() + 1) + "-" +
        (d.getDate()) + " " +
        (d.getHours()) + ":" +
        (d.getMinutes()) + ":" +
        (d.getSeconds());
    return date;
}
