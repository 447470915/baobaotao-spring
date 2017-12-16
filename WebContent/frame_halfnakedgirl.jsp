<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>蓝提子</title>
	<%  
	String path = request.getContextPath();//得到项目名称:baobaotao-spring
	//http://localhost:9080/baobaotao-spring/
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
	<base href="<%=basePath%>">
<style>
	a{ text-decoration:none; }
	Div{overflow:hidden}
</style>

</head>
<body onload="get_ie_wh()">

<div id="container" style="width:100%;height:10000px;background:#f2f2f2;">

	<iframe id="display_iframe" style="width:100%;height:100%;border:none">
	</iframe>
</div>


<div id="second" style="border-style:solid none none none;border-width:3px 0px 0px 0px;border-color:#e2e2e2">
	<div style="width:25%; float:left;font-size:20px;"  onclick="change_bar(1)">
		<center><div><img id="home" src="images/catalog/home.png"/></div></center>
	</div>
	<div style="width:25%; float:left;font-size:20px;" onclick="change_bar(2)">
		<center><div><img id="kind" src="images/catalog/kind_nofoc.png"/></div></center>
	</div>
	<div style="width:25%; float:left;font-size:20px;" onclick="change_bar(3)">
		<center><div><img id="find" src="images/catalog/find_nofoc.png"/></div></center>
	</div>
	<div style="width: 25%; float: left; font-size: 25px;" onclick="change_bar(4)">
		<center><div><img id="my" src="images/catalog/my_nofoc.png"/></div></center>
	</div>
			
</div>

<script language="javascript">
 function get_ie_wh(){
	 var w=document.documentElement.clientWidth ;//可见区域宽度
	 var h=document.documentElement.clientHeight;//可见区域高度
	 var hh=h-135;
	 document.getElementById("container").style.height=hh+"px";
	 document.getElementById("display_iframe").src="jsp/homepage_halfnakedgirl.jsp";
 }
 function change_bar(menu_index){
	 if(1==menu_index){
	 	document.getElementById("home").src="images/catalog/home.png";
	 	document.getElementById("kind").src="images/catalog/kind_nofoc.png";
	 	document.getElementById("find").src="images/catalog/find_nofoc.png";
	 	document.getElementById("my").src="images/catalog/my_nofoc.png";
	 	
	 	document.getElementById("display_iframe").src="jsp/homepage_halfnakedgirl.jsp";
	 }else if(2==menu_index){
		 document.getElementById("home").src="images/catalog/home_nofoc.png";
		 document.getElementById("kind").src="images/catalog/kind.png";
		 document.getElementById("find").src="images/catalog/find_nofoc.png";
		 document.getElementById("my").src="images/catalog/my_nofoc.png";
		 //跳转到登陆界面
		 document.getElementById("display_iframe").src="test.create";
	 }else if(3==menu_index){
		 document.getElementById("home").src="images/catalog/home_nofoc.png";
		 document.getElementById("kind").src="images/catalog/kind_nofoc.png";
		 document.getElementById("find").src="images/catalog/find.png";
		 document.getElementById("my").src="images/catalog/my_nofoc.png";
		 //发现
		 document.getElementById("display_iframe").src="jsp/notBuilt.jsp";
	 }else if(4==menu_index){
		 document.getElementById("home").src="images/catalog/home_nofoc.png";
		 document.getElementById("kind").src="images/catalog/kind_nofoc.png";
		 document.getElementById("find").src="images/catalog/find_nofoc.png";
		 document.getElementById("my").src="images/catalog/my.png";
		 //跳转到登陆界面
		 //window.location.href="login.create";
		 document.getElementById("display_iframe").src="my_login_register.create";
	 }
 }
 </script>

</body>
</html>

<%//System.out.println("homePage"); %>
