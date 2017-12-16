<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>未完成</title>
	<%  
	String path = request.getContextPath();//得到项目名称:baobaotao-spring
	//http://localhost:9080/baobaotao-spring/
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
	<base href="<%=basePath%>">
	</head>
	<body>      
		<div style="width:90%; margin:0 auto">


		<p style="text-align: left; margin-top: 40px;">
			<span style="font-size: 40px;color:purple"><strong></strong>
			</span>
		</p>
		<p style="font-size: 25px;line-height: 3em; margin-top: 40px;text-align: justify;">
		<font color="orange">你有过理想嘛？</font><br>
		有过，最初想当文学家。但后来，理想变成了攒一个60平米的首付……<br>
		
		<font color="orange">你相信爱情嘛？</font><br>
		相信过，邂逅、相爱、执子之手、与子偕老……但后来，凑合着能过日子就行啊……<br>
		
		<font color="orange">你一般怎么跟陌生人交流？</font><br>
		以前喜欢好人……但后来，不关心好坏，只关心对己是否有益……<br>
		
		<font color="orange">别沮丧，生活本身就是后者，只不过以前把你教育坏了，让你产生了错觉罢了吧？</font><br>
		
		更相信理想和现实是有距离的，现实需要理想引导，但不甘心理想一直被现实逼迫。一个一直想改变世界而被世界
		改变的人，一个向往成功而从未成功过的人。如果你也是，长安图片加我，暗号：每天改变一点点~
		
		</p>
		
		
		<center>
			<img id="kind" src="images/content/QR code_sxf.jpg"
				style="max-width: 100%; max-height: 100%" />
		</center>
		

	</div>

	</body>
</html>