<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="event.js"></script>
<script type="text/javascript" src="tween.js"></script>
<title>createIt</title>
<style>
a {
	text-decoration: none;
}

Div {
	overflow: hidden
}
</style>

</head>
<body onload="get_ie_wh()">

	<div id="container"
		style="width: 100%; height: 10000px; background: #ffffff;overflow:auto">

		<%@ include file = "frameList.jsp" %>
	
	</div>

	<!---------------------下沉目录 ----------------------- -->
	<div id="second"
		style="border-style: solid none none none;border-color: #e2e2e2;">
		<div style="width: 25%; float: left; font-size: 20px;" onclick="location.href='../../index.jsp'">
			<center>
				<div>
					<img id="home"
						src="../../images/catalog/home_nofoc.png" />
				</div>
			</center>
		</div>
		<div style="width: 25%; float: left; font-size: 20px;" onclick="location.href='catalogPage.jsp'">
			<center>
				<div>
					<img id="kind"
						src="../../images/catalog/kind.png" />
				</div>
			</center>
		</div>
		<div style="width: 25%; float: left; font-size: 20px;" onclick="location.href='../find/findPage.jsp'">
			<center>
				<div>
					<img id="find"
						src="../../images/catalog/find_nofoc.png" />
				</div>
			</center>
		</div>
		<div style="width: 25%; float: left; font-size: 25px;" onclick="location.href='../../view/user/my_login_register.create'">
			<center>
				<div>
					<img id="my"
						src="../../images/catalog/my_nofoc.png" />
				</div>
			</center>
		</div>

	</div>

	<script language="javascript">
		function get_ie_wh() {
			var w = document.documentElement.clientWidth;//可见区域宽度
			var h = document.documentElement.clientHeight;//可见区域高度
			var hh = h - 135;
			document.getElementById("container").style.height = hh + "px";
		}
	</script>

</body>
</html>