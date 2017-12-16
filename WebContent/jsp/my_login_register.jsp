<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<%
		String path = request.getContextPath();//得到项目名称:baobaotao-spring
		//http://localhost:9080/baobaotao-spring/
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	%>
	<base href="<%=basePath%>">
	<title>宝宝淘论坛登录</title>
	</head>
	<style>
		.block{
			height:500px;
			margin-top:30px;
			margin-left:20px;
			margin-right:20px;
			background:white;
		}
	</style>
	<body style="background:#f0f0f0;">
	<div id="login_div_id" class="block">
		<table width="100%" height="100%">
		<tr>
		<td>
		<div id="login_bt_id" style="width:150px;height:150px;margin:auto;">
		<a href="login.create"><img src="images/my/login_img.png" style="max-width: 100%; max-height: 100%"/>
		</a>
		</div>
		<br><br><br>
		<div><font size="8px"><center>登陆</center></font></div>
		</td>
		</tr>
		</table>
	</div>
	<div id="register_div_id" class="block">
		<table width="100%" height="100%">
		<tr>
		<td>
		<div id="login_bt_id" style="width:150px;height:150px;margin:auto;">
		<a href="register.create"><img src="images/my/register_img.png" style="max-width: 100%; max-height: 100%"/></a>
		</div>
		<br><br><br>
		<div><font size="8px"><center>注册</center></font></div>
		</td>
		</tr>
		</table>
	</div>
	
	</body>
</html>
