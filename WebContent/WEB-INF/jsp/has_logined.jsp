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
	height: 500px;
	margin-left: 20px;
	margin-right: 20px;
	background: white;
}
.noshow{
	display:none;	
}
.show{
	display:true;
}
</style>
<body style="background: #f0f0f0;">
	<div id="login_div_id" class="block">
		<table width="100%" height="100%">
			<tr>
				<td>
					<div id="login_bt_id"
						style="width: 250px; height: 250px; margin: auto;">
						<img src="images/my/has_logined_head_img.png"
							style="min-width: 100%; min-height: 100%" />
					</div> <br>
				<br>
				<br>
					<div>
						<%-- <font size="8px"><center>${user.userName}</center></font> --%>
						<font size="8px"><center>${user.userName}</center></font>
					</div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="set_div_id" class="block">
		<table width="100%" height="100%">
			<tr>
				<td>
					<form action="<c:url value="jsp/my_login_register.jsp"/>" onsubmit="return showLogoutBt()" method="post">
						<input name="isLogout" type="hidden"   id="isLogout" value="true" >  
						<input
							style="height: 100px; width: 100%; background: orange; font-size: 50px"
							type="submit" value="设置" /><!--这个按钮并不提交，只是用来在前端显示下拉按钮  -->
					</form>
					<br>
					<form id="logout_id" class="noshow" action="<c:url value="my_login_register.create"/>" method="post">
						<input name="isLogout" type="hidden"   id="isLogout" value="true" >  
						<input
							style="height: 100px; width: 100%; ; font-size: 50px"
							type="submit" value="退出" />
					</form>
					
				</td>
			</tr>
		</table>
	</div>
	

	
	<script type="text/javascript">
	var i=0;
	function showLogoutBt(){
		if(i%2==0){
			document.getElementById("logout_id").className="show";
			i++;
			return false;
		}else{
			document.getElementById("logout_id").className="noshow";
			i++;
			return false;
		}
	}
	</script>
</body>
</html>
