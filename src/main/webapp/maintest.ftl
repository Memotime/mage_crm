<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns:c="http://www.w3.org/1999/html">
<head>
    <#include "common.ftl" >
        <title>Crm | 后台主页</title>
        <script type="text/javascript" src="${ctx}/js/jquery.cookie.js"></script>
        <script type="text/javascript" src="${ctx}/js/main.js"></script>
        </head>
<body class="easyui-layout">
<div region="north" style="height: 78px;background-color: #E0ECFF">
    <table style="padding: 5px" width="100%">
        <tr>
            <td width="50%">
                <img alt="logo" src="${ctx}/images/bglogo.png">
            </td>
            <td valign="bottom" align="right" width="50%">
                <font size="3">&nbsp;&nbsp;<strong>欢迎：</strong><span id="userInfo">${userName!"mage"}|【${trueName!"mage" }】</span></font>
            </td>
        </tr>
    </table>
</div>
<div region="center">
    <div class="easyui-tabs" fit="true" border="false" id="tabs">
        <div title="首页" data-options="iconCls:'icon-home'">
            <div align="center" style="padding-top: 100px"><font color="blue" size="10">欢迎使用Crm后台管理系统</font></div>
        </div>
    </div>
</div>
<div region="west" style="width: 200px" title="导航菜单" split="true">
    <#list moduleList as item>
        <h1>#{item}</h1>
    </#list>
</div>
<div region="south" style="height:55px;background-color: #E0ECFF" align="center">
    好好学习，天天向上<br/>

</div>

<div id="dlg" class="easyui-dialog" style="width:400px;height:250px;padding: 10px 20px"
     closed="true" buttons="#dlg-buttons">

    <form id="fm" method="post">
        <table cellspacing="8px">
            <tr>
                <td>用户名：</td>
                <td><input type="text" id="userName" name="userName" readonly="readonly" value="${userName! }"
                           style="width: 200px"/></td>
            </tr>
            <tr>
                <td>原密码：</td>
                <td><input type="password" id="oldPassword" name="oldPassword" class="easyui-validatebox"
                           required="true" style="width: 200px"/></td>
            </tr>
            <tr>
                <td>新密码：</td>
                <td><input type="password" id="newPassword" name="newPassword" class="easyui-validatebox"
                           required="true" style="width: 200px"/></td>
            </tr>
            <tr>
                <td>确认新密码：</td>
                <td><input type="password" id="newPassword2" name="confirmPassword" class="easyui-validatebox"
                           required="true" style="width: 200px"/></td>
            </tr>
        </table>
    </form>
</div>

<div id="dlg-buttons">
    <a href="javascript:modifyPassword()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
    <a href="javascript:closePasswordModifyDialog()" class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
</div>

</body>
</html>