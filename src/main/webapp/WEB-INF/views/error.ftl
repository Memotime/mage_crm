<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>这个.. 页面没有找到！！！</title>
<#include "common.ftl" >
    <style type="text/css">
        body{margin:0;padding:0;background:#efefef;font-family:Georgia, Times, Verdana, Geneva, Arial, Helvetica, sans-serif;}

        div#mother{margin:40px auto 0 auto;width:943px;height:572px;position:relative;}
        div#errorBox{background: url(images/404_bg.png) no-repeat top left;width:943px;height:572px;margin:auto;}
        div#errorText{color:#39351e;padding:146px 0 0 446px }
        div#errorText p{width:303px;font-size:14px;line-height:26px;}
        div.link{height:50px;width:145px;float:left;}
        div#home{margin:20px 0 0 444px;}
        div#contact{margin:20px 0 0 25px;}
        h1{font-size:40px;margin-bottom:35px;}
        #a1{
            width: 135px;
            height: 41px;
            position: absolute;
            left: 445px;
            bottom: 121px;
        }
        #a2{
            width: 135px;
            height: 41px;
            position: absolute;
            right: 192px;
            bottom: 121px;
        }
    </style>

</head>
<body>

<div id="mother">
    <div id="errorBox">
        <div id="errorText">

            <h2>错误代号：${code}</h2>
            <h2>Sorry..${msg}！</h2>
            <p>似乎你所寻找的网页已移动或丢失了。<br />
                或者也许你只是键入错误了一些东西。<br />
                请不要担心，这没事。如果该资源对你很重要，请与管理员联系。<br />
                <font color ="red" id="num" size="4" face="impact">10</font>秒后自动返回首页，若没有转跳，请点击按钮</p>
        </div>
        <a id="a1" href="index" title="返回首页">
            <div class="link" id="home"></div>
        </a>
        <a id="a2" href="index" title="联系管理员">
            <div class="link" id="contact"></div>
        </a>
    </div>
</div>
<script type="text/javascript">
    window.onload=function(){         //一进该页面就加载以下方法
            setInterval('countDown()',1000);    //一般秒设置为参数为1000
        }
        var sec = 10;//设置倒计时时间为30秒
    function countDown() {        //倒计时的方法
            if(sec > 0) {

                document.getElementById("num").innerHTML=sec--;
            } else {
                if("${uri}"=="/main"){
                    window.location.href=ctx + "/index";
                }else{
                    window.parent.location.href = ctx + "/index";
                }

            }
    }
</script>
</body>
</html>