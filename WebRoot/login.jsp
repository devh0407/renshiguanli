<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="renshi.util.Util"%>
<%
Util.init(request);
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人事管理系统</title>
<style type="text/css">
#all {margin-left:auto; margin-right:auto; text-align: center;width: 540px;}
body {text-align:center;}
#main {background:url(images/login_mid.gif); height:240px; padding-top:10px; text-align:center;}
#title {height:66px;margin-top: 120px;}
#login { margin-top: 32px; width: 420px; margin-left: auto; margin-right:auto;}
#btm_left {background:url(images/login_btm_left.gif) no-repeat; width:21px; float:left;}
#btm_mid {background:url(images/login_btm_mid.gif); width:498px; float:left;}
#btm_right {background:url(images/login_btm_right.gif) no-repeat; width:21px; float:left;}
</style>
<script type="text/javascript" language="javascript">
function reset_form()
{
	document.getElementById('username').value = '';
	document.getElementById('password').value = '';
	return false;
}
					 
</script>
</head>

<body>
<div id="all">
    <div id="title" style=" background-image: url(images/login_title.gif);">	
    <br/>
    <span style="font-size: 30px;font-weight: bold;color: white;">人事管理系统</span>
    </div>
    <div id="main">
    	<form action="method!login" method="post" id="login_form">
        <table id="login">
        	<tr>
            	<td>用户名：</td>
                <td><input type="text" name="username" id="username" size="32" style="background:url(images/username_bg.gif) left no-repeat #FFF; border:1px #ccc solid;height: 20px; font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight: 800; margin:0; padding-left: 24px;" /></td>
            </tr>
            <tr><td></td><td></td></tr>
            <tr><td></td><td></td></tr>
            <tr>
            	<td>密&nbsp;&nbsp;码：</td>
                <td><input type="password" name="password" id="password" size="32" style="background:url(images/password_bg.gif) left no-repeat #FFF; border: 1px #ccc solid; height: 20px; font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight: 800; margin:0; padding-left: 24px;" /></td>
            </tr>
            <tr>
            	<td>用户角色：</td>
                <td align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <select name="role">
                <option value="0">员工</option>
                <option value="1">系统管理员</option>
                </select>
                </td>
            </tr>
            <tr>
            	<td></td>
            	<td style="text-align: left; padding-top: 32px;">
                	<input type="image" src="images/login.gif" name="submit" onclick="javascript:document.getElementById('login_form').submit();" />&nbsp;&nbsp;&nbsp;
                    <input type="image" src="images/cancel.gif" name="cancel" onclick="reset_form();" />
                </td>
            </tr>
        </table>
    </div>
    <div id="btm">
        <div id="btm_left"></div>
        <div id="btm_mid"></div>
        <div id="btm_right"></div>
    </div>
</div>
</body>
</html>


