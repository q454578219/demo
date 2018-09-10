var basePath = getRealPath() + '/';

function getAjaxData(url, showData) {
    ajaxdata = null;
    $.ajax({
        url: url,
        type: "POST",
        dataType: "json", // 指定服务器返回的数据类型
        success: function (data) {
            showData(data)
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

    return (realPath);

}

function makeTd(ob, columList) {
    var html = '';
    columList = columList.split(',');
    for (var i = 0; i < columList.length; i++) {
        if (columList[i].indexOf("time") == -1 && columList[i].indexOf("status") == -1) {
            html += '<td>' + ob[columList[i]] + '</td>';
        } else if (columList[i].indexOf("time") != -1) {
            html += '<td>' + timestampToStr(ob[columList[i]].time) + '</td>';
        } else if (columList[i].indexOf("status") != -1) {
            var statusname = ob[columList[i]]==1?'已启用':'已禁用';
            html += '<td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-mini">'+statusname+'</span></td>';
        }
    }
    return html;
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
