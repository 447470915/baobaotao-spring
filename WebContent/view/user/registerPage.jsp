<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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
		style="width: 100%; height: 10000px; background: #f2f2f2;overflow:auto">

		<%@ include file = "register.jsp" %>
	
	</div>

	<!---------------------下沉目录 ----------------------- -->
	<div id="second"
		style="border-style: solid none none none; border-width: 3px 0px 0px 0px; border-color: #e2e2e2">
		<div style="width: 25%; float: left; font-size: 20px;">
			<center>
				<div>
					<a href="../../index.jsp"> <img id="home"
						src="../../images/catalog/home_nofoc.png" />
					</a>
				</div>
			</center>
		</div>
		<div style="width: 25%; float: left; font-size: 20px;">
			<center>
				<div>
					<a href="../catalogIndex/catalogPage.jsp"> <img id="kind_nofoc"
						src="../../images/catalog/kind_nofoc.png" />
					</a>
				</div>
			</center>
		</div>
		<div style="width: 25%; float: left; font-size: 20px;">
			<center>
				<div>
					<a href="../find/findPage.jsp"> <img id="find"
						src="../../images/catalog/find_nofoc.png" />
					</a>
				</div>
			</center>
		</div>
		<div style="width: 25%; float: left; font-size: 25px;">
			<center>
				<div>
					<a href="userPage.jsp"> <img id="my"
						src="../../images/catalog/my.png" />
					</a>
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