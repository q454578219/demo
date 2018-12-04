document.write("<script type=\"text/javascript\" src=\"js/jquery-3.3.1.js\"></script>");
var columNameList=[];
var columChinaNameList=[];
function InitTableColums(url,data,checkbox){
    if(checkbox){
        var o = new Object();
        o.data='<input type="checkbox" id="selectAll"  onclick="selectAll()" value="0"  class="checkchild"/>'
        columChinaNameList.push(o);
        o = new Object();
        o.render =function (data, type, full, meta) {return '<input type="checkbox" name="tableSelect" value="'+data.uid+'" class="checkchild"/>'};
        o.data=null;
        columNameList.push(o);

    }
    for(var i=0;i<data.length;i++){
        for(var key in data[i]){
            o = new Object();
            o.data  = key;
            if(key=="edit") {
                o.data=null;
                o.render = function (data, type, full, meta) {
                    return '<button type="button" class="btn btn-default" data-toggle="modal" onclick="showUser_add('+data.uid+')">编辑</button>'
                };
            }

            columNameList.push(o);
            o = new Object();
            o.data = data[i][key];
            columChinaNameList.push(o);
        }
    }

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
function getAjaxData(url,param,callback) {
    $.ajax({
        url: getRealPath()+url,
        type: "POST",
        dataType: "json", // 指定服务器返回的数据类型
        // contentType: 'application/json;charset=utf-8',
        data:param,
        success: function (data) {
            callback(data);
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

function textHtml(id,name,width,value){
    width=width?width:200;
    var html='<div class="form-group">'+
        '<label for="name" class="fl modelLabel">'+name+'</label>'+
        '<input type="text" class="form-control fl" id="'+id+'" placeholder="请输入'+name+'" style="width:'+width+'" value="'+value+'">'+
        '</div>';
    return html;
}

function selectHtml(id,name,width,value){
    width=width?width:200;
    var html= '<div class="form-group">'+
        '<label for="name" class="fl modelLabel">'+name+'</label>'+
        '<select id="'+id+'" class="selectpicker show-tick form-control" data-live-search="true"  style="width:'+width+'">  ' +
        '   <option value="1">启用</option>'+
        '   <option value="0">禁用</option>' +
        '</select>';
    return html;
}

function jumpUrl(url){
    console.log(getRealPath()+url);
    window.location.href=getRealPath()+url;
}
function openAlert(msg,type){
    msg=msg||"连接服务器失败";
    type=type||"danger";
    $.notifyDefaults({
        placement: {
            from: "top"
        },
        type: type,
        allow_dismiss: false
    });
    $.notify(msg,{
        z_index: 1031,
        placement: {
            align: "center"
        }
    });
}

function selectAll(){
    if($('#selectAll').is(':checked')){
        $("[name='tableSelect']").attr("checked",true);//全选
    }else{
        $("[name='tableSelect']").attr("checked",false);//全不选
    }
}
String.prototype.endWith=function(s){
    if(s==null||s==""||this.length==0||s.length>this.length)
        return false;
    if(this.substring(this.length-s.length)==s)
        return true;
    else
        return false;
    return true;
}

String.prototype.startWith=function(s){
    if(s==null||s==""||this.length==0||s.length>this.length)
        return false;
    if(this.substr(0,s.length)==s)
        return true;
    else
        return false;
    return true;
}

function commonIsEmpty(obj){
    if(typeof obj == "undefined" || obj == null || obj == ""){
        return true;
    }else{
        return false;
    }
}
function getTableHead(){
    return '<table>';
}
function getTableFoot(){
    return '</table>';
}
function addTrTdHead(){
    return '<tr><td>';
}
function addTrTdFoot(){
    return '</td></tr>';
}
