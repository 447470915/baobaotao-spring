<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>宝宝淘论坛登录</title>
</head>

<body>
登录成功
<br><br>
<form action="<c:url value='tenantUploadFile.create'/>" method="post"
	enctype="multipart/form-data">
	<input type="file" name="upLoadPic" />	
	<input style="height: 30px;  background: orange; font-size: 2px"
	type="submit" value="提交" />
</form>


</body>
</html>
