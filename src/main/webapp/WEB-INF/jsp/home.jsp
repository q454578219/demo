<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/8/10
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    /*headdiv start*/
    * {
        margin: 0;
        padding: 0
    }

    .headdiv {
        width: 100%;
        min-width: 1400px;
        background-image: url("/img/hotimg.jpg");
        fbackground-repeat: no-repeat;
        background-size: 100% 100%;
        -moz-background-size: 100% 100%;
        box-shadow:0 0 110px 110px rgba(7,36,57,.7) inset;
    }

    .headslip {
        width: 80%;
        height: 70px;
        margin: 0 auto;
    }
    .logodiv{
        float:left;
        width:28% ;
        height: 100%;
    }
    .titleimg {
        width: 125px;
        height: 25px;
        margin-top: 23px;
    }
    .searchDiv{
        float:left;
        width: 45%;
        height: 100%;
        text-align: center;
    }
    .searchText{
        text-indent:20px;
        width: 300px;
        height: 36px;
        margin-top: 16px;
        border: 0;
        background:rgba(171, 181, 198, 0.5);
        border-radius:40px 0 0 40px;
        display: inline-block;
        color: white;
        font-family:"微软雅黑";
    }
    .searchButton{
        width: 80px;
        height: 38px;
        background-color: #36a3ff;
        margin-top: 15px ;
        border: 0;
        border-radius:0 40px 40px 0;
        background: -webkit-gradient(linear, left top, left bottom, from(#1ebeff), to(#3ca0ff));
        background: -moz-linear-gradient(left, #1ebeff, #3ca0ff);
        filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#faa51a', endColorstr='#f47a20');
        color: white;
    }
    .toolbardiv{
        width: 27%;
        height: 100%;
        float: left;
    }
    .toolimg{
        margin: 15px  1% auto 1%;
        width: 30px;
        height: 40px;
    }
    /*headdiv end*/

    /*tabdiv start*/
    .tabdiv{
        width: 80%;
        min-width: 1400px;
        height: 90px;
        margin: 0 auto;
        background-color: azure;
    }
    .lefttabdiv{
        float: left;
        width: 750px;
        height: 90px;
        display:flex;
        justify-content:center;
        align-items:center;
    }
    .leftdivinner{
        width: 100%;
        height: 50%;
        margin: auto;
        border-left:solid 1px #f3f3f3;
        border-right:1px solid #f3f3f3;
    }
    .leftdivinnerbox{
        float: left;
        width: 25%;
        height: 100%;
        border-right:1px solid #f3f3f3;
        box-sizing: border-box;
    }
    .lefttabdiv .textbox{
        width: 33.3%;
    }
    .textbox{
        float: left;
        height: 50%;
        text-align: center;
        font-size: 14px;
        color:#666;
        font-family: “Microsoft YaHei” ! important;
    }
    .midtabdiv{
        float: left;
        width:85px;
        height: 100%;
        display:flex;
        justify-content:center;
        align-items:center;
    }

    .middivinner{
        width: 100%;
        height: 50%;
        margin: auto;
        border-left:solid 1px #f3f3f3;
        border-right:1px solid #f3f3f3;
    }
    .middivinnerbox{
        float: left;
        width: 100%;
        height: 100%;
        border-right:1px solid #f3f3f3;
        box-sizing: border-box;
    }
    .midtabdiv .textbox{
        width: 100%;
    }
    .rightdiv{
        width: 340px;
        height: 100%;
        float: left;
        font-size:0
    }
    .rightdivinner{
        margin-top:10px;
        padding: 0;
        width: 340px;
        height: 80%;
    }
    .rightimgbox{
        float: left;
        width: 85px;
        height: 100%;
    }
    .rightimgboximg{
        width: 100%;
        height: 70%;
        text-align: center;
    }
    .rightimgbox span{
        float: left;
        width: 100%;
        height:30%;
        text-align: center;
        font-size: 13px;
        color: #666666;
    }
    .rightimgboximg img{
        width: 30px;
        height: 30px;
        margin-top :10px ;
    }

    .contentdiv{
        width: 100%;
        height: 540px;
        min-width: 1400px;
    }
    .contentinnerdiv{
        width: 80%;
        height: 480px;
        margin: 0 auto;
    }
    .contentmaindiv{
        width: 100%;
        height: 200px;
    }
    .contenttitlediv{
        width: 100%;
        height: 60px;
    }
    .contenttitlediv div{
        float: left;
        line-height: 60px;
    }
    .contenttitleleft{
        width: 10%;
        height: 100%;
        font-size: 27px;
    }
    .contenttitlemid{
        width: 85%;
        height: 100%;
        font-size: 14px;
        color: #666666;
    }
    .contenttitleright{
        width: 5%;
        height: 100%;
        font-size: 14px;
        color: #666666;
    }
    .contenttitleright img{
        width: 12px;
        height: 12px;
    }
    .videobox{
        width: 16.6%;
        height: 100%;
        float: left;
        border-right:8px solid #FFFFFF;
        box-sizing: border-box;
    }
    .videobox img{
        width: 100%;
        height: 66%;
    }
    .videoboxbigtext{
        margin-top: 2%;
        width: 100%;
        height: 20%;
        font-size: 13px;
        font-family:"微软雅黑";
    }
    .videoboxsmalltext{
        width: 100%;
        height: 10%;
        font-size: 3px;
        font-family:"微软雅黑";
        color: #7e7e7e;
    }
    /*tabdiv end*/
</style>
<body>
<%--<div id="headdiv" class="headdiv">&lt;%&ndash;头部整体&ndash;%&gt;
    <div class="headslip">&lt;%&ndash;头部的div显示logo及各种图标&ndash;%&gt;
        <div class="logodiv">
            <img src="/img/titleimg.png" class="titleimg">&lt;%&ndash;logo&ndash;%&gt;
        </div>

        <div class="searchDiv">&lt;%&ndash;搜索div&ndash;%&gt;
            <input type="text" class="searchText">&lt;%&ndash;搜索框&ndash;%&gt;<input type ="button" class="searchButton" onclick="search()" value="搜索">&lt;%&ndash;搜索按钮&ndash;%&gt;
        </div>
        <div class="toolbardiv">&lt;%&ndash;工具栏div&ndash;%&gt;
            <img src="/img/vipimg.png" class="toolimg">
            <img src="/img/sbimg.png" class="toolimg">
            <img src="/img/historyimg.png" class="toolimg">
            <img src="/img/uploadimg.png" class="toolimg">
            <img src="/img/pcimg.png" class="toolimg">
        </div>
    </div>
</div>--%>
<%--<div id="tabdiv" class="tabdiv">
    <div id ="lefttabdiv" class="lefttabdiv">
        <div id="leftdivinner" class="leftdivinner">
            <div id="leftdivinnerbox1" class="leftdivinnerbox">
                <div class="textbox">剧集</div>
                <div class="textbox">电影</div>
                <div class="textbox">综艺</div>
                <div class="textbox">动漫</div>
                <div class="textbox">娱乐</div>
                <div class="textbox">资讯</div>
            </div>
            <div id="leftdivinnerbox2" class="leftdivinnerbox">
                <div class="textbox">少儿</div>
                <div class="textbox">来疯</div>
                <div class="textbox">音乐</div>
                <div class="textbox">高校</div>
                <div class="textbox">直播</div>
                <div class="textbox">片库</div>
            </div>
            <div id="leftdivinnerbox3" class="leftdivinnerbox">
                <div class="textbox">纪实</div>
                <div class="textbox">公益</div>
                <div class="textbox">体育</div>
                <div class="textbox">汽车</div>
                <div class="textbox">科技</div>
                <div class="textbox">财经</div>
            </div>
            <div id="leftdivinnerbox4" class="leftdivinnerbox">
                <div class="textbox">文化</div>
                <div class="textbox">旅游</div>
                <div class="textbox">时尚</div>
                <div class="textbox">亲子</div>
                <div class="textbox">教育</div>
                <div class="textbox">游戏</div>
            </div>
        </div>
    </div>
    <div id ="midtabdiv" class="midtabdiv">
        <div id="middivinner" class="middivinner">
            <div id="midvidinnerbox" class="middivinnerbox">
                <div class="textbox">生活</div>
                <div class="textbox">VR</div>
            </div>
        </div>
    </div>
    <div id ="righttabdiv" class="rightdiv">
        <div class="rightdivinner">
            <div id="imgbox1" class="rightimgbox">
                <div class="rightimgboximg">
                    <img src="img/videostore.png">
                </div>
                <span>优酷片库</span>
            </div>
            <div id="imgbox2" class="rightimgbox">
                <div class="rightimgboximg">
                    <img src="img/indexnumber.png">
                </div>
                <span>优酷片库</span>
            </div>
            <div id="imgbox3" class="rightimgbox">
                <div class="rightimgboximg">
                    <img src="img/bestchose.png">
                </div>
                <span>优酷片库</span>
            </div>
            <div id="imgbox4" class="rightimgbox">
                <div class="rightimgboximg">
                    <img src="img/appmanage.png">
                </div>
                <span>优酷片库</span>
            </div>
        </div>
    </div>
</div>--%>
<div id="contentdiv" class="contentdiv">
    <div class="contentinnerdiv">
        <div class="contenttitlediv">
            <div class="contenttitleleft">
                优酷懂你
            </div>
            <div class="contenttitlemid">
                看的越多小酷越懂得你的口味
            </div>
            <div class="contenttitleright">
                <img src="img/refresh.png">换一换
            </div>
        </div>
        <div class="contentmaindiv">
            <div class="videobox">
                <img src="img/video1.png">
                <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
                <div class="videoboxsmalltext">3.6万次播放</div>
            </div>
            <div class="videobox">
                <img src="img/video1.png">
                <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
                <div class="videoboxsmalltext">3.6万次播放</div>
            </div><div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div>
            <div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div><div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div><div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div>
        </div>
        <div class="contentmaindiv">
            <div class="videobox">
                <img src="img/video1.png">
                <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
                <div class="videoboxsmalltext">3.6万次播放</div>
            </div>
            <div class="videobox">
                <img src="img/video1.png">
                <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
                <div class="videoboxsmalltext">3.6万次播放</div>
            </div><div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div>
            <div class="videobox">
                <img src="img/video1.png">
                <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
                <div class="videoboxsmalltext">3.6万次播放</div>
            </div><div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div><div class="videobox">
            <img src="img/video1.png">
            <div class="videoboxbigtext">李诞自爆每天都孤单寂寞</div>
            <div class="videoboxsmalltext">3.6万次播放</div>
        </div>
        </div>
    </div>
</div>
<%--<div class="contentdiv2">--%>
    <%--<div class="contentinnerdiv"></div>--%>
</div>
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
    var x = 0;
    $(document).ready(function () {
        $(window).resize(function () {
             var wheight = $(window).height();
             var wwidth = $(window).width();
            controlrightimgboxwid(wwidth)
            controlheaddiv();
            controlvideobox();
        });
        $(window).resize();
    });
    //控制上方div方法
    function controlheaddiv(){
        var width = $(".headdiv").width();
        var height = width / 3;
        $(".headdiv").css("height", height + "px");
    }
    //控制中间右边那四个图标的方法
    function controlrightimgboxwid(width) {
        if(1365<width&&width<1470){
            $('#imgbox4').hide();
            $('#righttabdiv').css("width","255px");
        }else if(width<1365){
            $('#imgbox3').hide();
            $('#imgbox4').hide();
            $('#righttabdiv').css("width","170px");
        }else{
            $('#imgbox3').show();
            $('#imgbox4').show();
            $('#righttabdiv').css("width","340px");
        }
    }
    function controlvideobox() {
        var width = $(".contentmaindiv").width();
        var height = width *0.144;
        $(".contentmaindiv").css("height", height + "px");
    }
</script>
</body>
</html>
