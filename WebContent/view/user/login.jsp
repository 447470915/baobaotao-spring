<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>宝宝淘论坛登录</title>
</head>
<style>
.block {
	height: 1000px;
	margin-top: 30px;
	margin-left: 20px;
	margin-right: 20px;
	background: white;
}
</style>
<body>
	<div style="background: #f0f0f0;">
		<div id="login_div_id" class="block">
			<table width="100%" height="100%">
				<tr>
					<td>
						<div id="login_container" style="width: 60%; margin: auto;">
							<center>
								<font size="80px">登陆</font>
							</center>
							<br>
							<br>
							<br>
							<br>
							<form action="<c:url value="loginCheck.create"/>" method="post">
								<font size="60px">用户名：</font> <br> <input
									style="height: 80px; width: 99%; font-size: 40px" type="text"
									placeholder="电话/邮箱/其他" name="userName"> <br>
								<br>
								<br> <font size="60px">密&nbsp&nbsp&nbsp&nbsp码：</font> <br>
								<input style="height: 80px; width: 99%; font-size: 40px"
									type="password" name="password"> <br>
								<br>
								<br>
								<br>
								<br>
								<br> <input
									style="height: 100px; width: 100%; background: orange; font-size: 50px"
									type="submit" value="登录" />
							</form>
							<c:if test="${!empty error}">
								<font color="red" size="80px"><c:out value="${error}" /></font>
							</c:if>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>



</body>
</html>
