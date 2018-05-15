<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body {font-family: Arial, Helvetica, sans-serif; font-size:12px; text-align:center;}
a { text-decoration: none;}
#all {widht: 100%; text-align:center; margin:auto;}
#main {width: 96%; line-height: 1.8; margin:auto; border:1px #ccc dashed; text-align: left; text-indent: 2em;}
</style>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<script language="javascript" type="text/javascript">

function checkform()
{
	 
	

	if (document.getElementById('jiabanjihuaid').value=="")
	{
		alert("加班计划不能为空");
		return false;
	}
	
	
	if (document.getElementById('jiabanneirongid').value=="")
	{
		alert("加班内容不能为空");
		return false;
	}
	
 	
	return true;
	
}


</script>
</head>

<body>
<div id="all">
	<TABLE class=".table-bordered" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TR height=28>
    <TD background=images/title_bg1.jpg>当前位置:---》》${title }</TD></TR>
  <TR>
    <TD bgColor=#b1ceef height=1></TD></TR>
  <TR height=20>
    <TD background=images/shadow_bg.jpg></TD></TR></TABLE>
     <form action="${url }?id=${bean.id }" method="post" onsubmit="return checkform()">
<TABLE class=".table-bordered" cellSpacing=0 cellPadding=0 width="60%" align=center border=1>
  	
  	
  	
  	<TR height=>
    <TD align="center" >加班人员:</TD>
    <TD align="center"> 
    <input  type="text" name="jiabanjihua"  id='jiabanjihuaid'  size="30" value="${bean.user.truename }"  readonly="readonly"/>
 
    </TD>
    </TR>
  	
  	
  	<TR height=>
    <TD align="center" >加班计划:</TD>
    <TD align="center"> 
    <input  type="text" name="jiabanjihua"  id='jiabanjihuaid'  size="30" value="${bean.jiabanjihua }"  readonly="readonly"/>
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >加班时长：</TD>
    <TD align="center">  
    <input  type="text" name="jiabanshichang"  id='jiabanshichangid'  size="30" value="${bean.jiabanshichang }"  readonly="readonly"/>
    
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >加班地点：</TD>
    <TD align="center">  
    <input  type="text" name="jiabandidian"  id='jiabandidianid'  size="30" value="${bean.jiabandidian }" readonly="readonly" />
    
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >加班内容：</TD>
    <TD align="center">  
    <textarea rows="7" cols="50" name="jiabanneirong"  id='jiabanneirongid' readonly="readonly">${bean.jiabanneirong }</textarea>
    
    </TD>
    </TR>
    
    
    
    <TR height=>
    <TD align="center" > 操作：</TD>
    <TD align="center"> 

				<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" />
    
    </TD>
    </TR>
    
    </TABLE>
    </form>
</div>
</body>
</html>

