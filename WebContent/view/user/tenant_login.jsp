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
			height:600px;
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
		

			<div id="login_container" style="width:60%;margin:auto;">
			<center><font size="6px">登陆</font></center>
			<br><br><br><br>
			<form action="<c:url value="tenantLoginCheck.create"/>" method="post">
				<font size="6px">账号名：</font>
				<br>
				<input style="height:60px;width:99%;font-size:25px" type="text" placeholder="电话/邮箱/其他" name="tenantAcount">
				<br><br>
				<font size="6px">密&nbsp码：</font>
				<br>
				<input style="height:60px;width:99%;font-size:30px" type="password" name="password">
				<br><br><br><br>
				<input style="height:70px;width:100%;background:orange;font-size:30px" type="submit" value="登录" />
			</form>
			<c:if test="${!empty error}">
		        <font color="red" size="6px"><c:out value="${error}" /></font>
			</c:if> 
			</div>
		
		
		
		</td>
		</tr>
		</table>
	</div>
	
	
	

	</body>
</html>
