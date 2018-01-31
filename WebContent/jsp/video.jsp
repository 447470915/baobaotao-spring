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
<title>视频</title>
</head>

<body>

	<video width="100%" height="100%" controls="controls"> 
		<source	src="video/2.mp4" type="video/mp4"> 
		Your browser does not support the video tag. 
	</video>

</body>
</html>
