<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="envProperties.EnvProperties"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试页</title>
<%
	String preUrl = "http://" + EnvProperties.getProperties().getProperty("IP") + ":"
			+ EnvProperties.getProperties().getProperty("PORT");
%>
</head>
<body>
	<div id="first"
		style="width: 96%; margin: 0 auto; background: #f2f2f2; overflow: auto;">
		<h3>REST的get测试</h3>
		<form
			action="<%=preUrl%>/basic-create-project/springRESTTestInterface.create"
			method="get">
			<input type="submit" value="提交" />
		</form>
		
		<h3>REST的put测试</h3>
		<form
			action="<%=preUrl%>/basic-create-project/springRESTTestInterface.create"
			method="post">
			<input type="hidden" name = "_method" value = "put"/>
			<input type="submit" value="提交" />
		</form>
	</div>

</body>
</html>

