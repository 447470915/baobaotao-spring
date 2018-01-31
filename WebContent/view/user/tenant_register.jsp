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
.block {
	height: 1000px;
	margin-top: 30px;
	margin-left: 20px;
	margin-right: 20px;
	background: white;
}
</style>
<body style="background: #f0f0f0;">
	<div id="login_div_id" class="block">
		<table width="100%" height="100%">
			<tr>
				<td>
					<div id="login_container" style="width: 60%; margin: auto;">
						<center>
							<font size="6px">注册</font>
						</center>
						<br> <br> <br> <br>
						<form action="<c:url value="tenantRegisterProcess.create"/>"
							onsubmit="return checkPasswords()" method="post">
							<font size="6px">账号名：</font> <br> <input id="tenantAcount_id"
								style="height: 60px; width: 99%; font-size: 25px" type="text"
								placeholder="电话/邮箱/其他" name="tenantAcount"> <br> <br> <br>
							<font size="6px">姓名：</font> <br> <input id="tenantName_id"
								style="height: 60px; width: 99%; font-size: 25px" type="text"
								name="tenantName"><br> <br> <br>
							<font size="6px">设置密码：</font> <br> <input
								id="firstPassword"
								style="height: 60px; width: 99%; font-size: 40px"
								type="password" name="password"> <br> <br> <br>
							<font size="6px">确认密码：</font> <br> <input
								id="secondPassword"
								style="height: 60px; width: 99%; font-size: 40px"
								type="password" name="confirmPassword"> <br> <br>
							<br> <br> <br> <br> <input
								style="height: 70px; width: 100%; background: orange; font-size: 40px"
								type="submit" value="注册" />
						</form>
						<font id="checkPasswordWarning_id" color="red" size="6px"></font>
						<!--用来提示两次密码的合法性  -->
						<c:if test="${!empty error}">
							<font color="red" size="6px"><c:out value="错误信息：${error}" /></font>
						</c:if>
					</div>

				</td>
			</tr>
		</table>
	</div>


	<script>
		function checkPasswords() {
			var tenantAcount = document.getElementById("tenantAcount_id").value;
			var tenantName = document.getElementById("tenantName_id").value;
			var firstPassword = document.getElementById("firstPassword").value;
			var secondPassword = document.getElementById("secondPassword").value;
			if (tenantAcount.length == 0 ||tenantName.length == 0 ||firstPassword.length == 0) {
				document.getElementById("checkPasswordWarning_id").innerHTML = "账户名、姓名或是密码不能为空！";
				return false;//不能为空
			}
			if (tenantName.length > 30 || firstPassword.length > 32) {
				document.getElementById("checkPasswordWarning_id").innerHTML = "账户名不能超过30个字符长度，密码不能超过32位！";
				return false;//不能为空
			}
			if (firstPassword != secondPassword) {
				document.getElementById("checkPasswordWarning_id").innerHTML = "两次密码不一致！";
				return false;//密码不一致
			} else {
				return true;//密码一致
			}
		}
	</script>

</body>
</html>
