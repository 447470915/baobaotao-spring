<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "envProperties.EnvProperties" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页</title>
<style>
	a{ text-decoration:none; }
	Div{overflow:hidden}
</style>
<% String preUrl =  "http://"+EnvProperties.getProperties().getProperty("IP")+":"+EnvProperties.getProperties().getProperty("PORT");%>
</head>
<body>
	<div id="first"  style="width:96%;height:2000px;margin:0 auto; background:#f2f2f2;overflow:auto;">
			<div id="11"
				style="width: 49.25%; height:30%; background: #ffffff; float: left">
				<table width="100%" height="100%">
					<tr>
						<td>
							<center>
								<a href="<%=preUrl%>/basic-create-project/view/videoIndex/djVideoFrame.html">
								<img id="kind" src="images/content/5.jpg"
									style="min-width: 100%; min-height: 100%" />
								</a>
							</center>
						</td>
					</tr>
				</table>
			</div>

			<div id="12"
				style="width: 49.25%; height: 30%; margin-left: 1.5%; background: #ffffff; float: left">
				<table width="100%" height="100%">
					<tr>
						<td>
							<center>
							<a href="<%=preUrl%>/basic-create-project/view/videoIndex/myPlayer.jsp">
								<img id="kind" src="images/content/6.jpg"
									style="max-width: 100%; max-height: 100%" />
							</a>		
							</center>
						</td>
					</tr>
				</table>
			</div>

			<div id="21" style="width:49.25%; height:30%;margin-top:1.5%;background:#ffffff;float:left">
				<table width="100%" height="100%">
					<tr>
						<td>
							<center>
							<a href="<%=preUrl%>/basic-create-project/view/videoIndex/myPlayer2.jsp">
								<img id="kind" src="images/content/7.jpg"
									style="max-width: 100%; max-height: 100%" />
							</a>
							</center>
						</td>
					</tr>
				</table>
			</div>
		
			<div id="22" style="width:49.25%; height:30%;margin-top:1.5%;margin-left:1.5%;background:#ffffff;float:left">
					<table width="100%" height="100%">
						<tr>
							<td>
								<center>
								<a href="<%=preUrl%>/basic-create-project/view/videoIndex/myPlayer3.jsp">
									<img id="kind" src="images/content/8.jpg"
										style="max-width: 100%; max-height: 100%" />
								</a>		
								</center>
							</td>
						</tr>
					</table>
			</div>
		
			<div id="31" style="width:49.25%;height:40%;margin-top:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/0.jpg"
										style="min-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="32" style="width:49.25%;height:40%;margin-top:1.5%;margin-left:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/5.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="41" style="width:49.25%;height:40%;margin-top:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/7.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="42" style="width:49.25%;height:40%;margin-top:1.5%;margin-left:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr> 
							<td>
								<center>
									<img id="kind" src="images/content/8.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="21" style="width:49.25%;height:40%;margin-top:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/9.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="22" style="width:49.25%;height:40%;margin-top:1.5%;margin-left:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/10.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="31" style="width:49.25%;height:40%;;margin-top:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/6.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="32" style="width:49.25%;height:40%;;margin-top:1.5%;margin-left:1.5%;background:#ffffff;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/3.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			<div id="41" style="width:49.25%;height:40%;;margin-top:1.5%;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/1.jpg"
										style="min-width: 100%; min-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="42" style="width:49.25%;height:40%;margin-top:1.5%;margin-left:1.5%;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/2.jpg"
										style="min-width: 100%; min-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			<div id="51" style="width:49.25%;height:40%;margin-top:1.5%;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/3.jpg"
										style="max-width: 100%; max-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
			
			<div id="52" style="width:49.25%;height:40%;margin-top:1.5%;margin-left:1.5%;float:left">
							<table width="100%" height="100%">
						<tr>
							<td>
								<center>
									<img id="kind" src="images/content/4.jpg"
										style="min-width: 100%; min-height: 100%" />
								</center>
							</td>
						</tr>
					</table>
			</div>
	</div>

</body>
</html>

