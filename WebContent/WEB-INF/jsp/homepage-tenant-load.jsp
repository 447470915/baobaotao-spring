<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页</title>
	<%  
	String path = request.getContextPath();//得到项目名称:baobaotao-spring
	//http://localhost:9080/baobaotao-spring/
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	ArrayList<String> picPathsList=(ArrayList<String>)request.getSession().getAttribute("picturePaths");
	
	%>
	<base href="<%=basePath%>">
<style>
	a{ text-decoration:none; }
	Div{overflow:hidden}
</style>

</head>
<body onload="get_ie_wh()">
	
	<div id="first"  style="width:96%;height:2000px;margin:0 auto; background:#f2f2f2;overflow:auto;">
		
		<%
			//for(int i=0;i<picPathsList.size();i++)
			if(picPathsList.size()>0)
			{
		%>
			<div id=<%=picPathsList.get(0) %>
				style="width: 49.25%; height:40%; background: #ffffff; float: left">
				<table width="100%" height="100%">
					<tr>
						<td>
							<center>
								<img id="kind" src=<%=picPathsList.get(1)%>
									style="max-width: 100%; max-height: 100%" />
							</center>
						</td>
					</tr>
				</table>
			</div>
		<%
			}
		%>
<!-- 			<div id="12"
				style="width: 49.25%; height: 40%; margin-left: 1.5%; background: #ffffff; float: left">
				<table width="100%" height="100%">
					<tr>
						<td>
							<center>
								<img id="kind" src="images/chunyan/2.jpg"
									style="max-width: 100%; max-height: 100%" />
							</center>
						</td>
					</tr>
				</table>
			</div>
 -->	
 
 		<form action="<c:url value="tenantUploadFile.create"/>" method="post"
			enctype="multipart/form-data">
			<input type="file" name="upLoadPic" />	
			<input style="height: 30px;  background: orange; font-size: 2px"
			type="submit" value="提交" />
		</form>	
	</div>
<script language="javascript">
 function get_ie_wh(){
	 var w=document.documentElement.clientWidth ;//可见区域宽度
	 var h=document.documentElement.clientHeight;//可见区域高度
	 document.getElementById("first").style.height=h+"px";
 }
 </script>
</body>
</html>

