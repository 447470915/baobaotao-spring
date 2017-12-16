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
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
	<base href="<%=basePath%>">
</head>
<style>
a{text-decoration:none; }
</style>
<body>

	<div style="width:90%; margin:0 auto">


		<p style="text-align: left; margin-top: 40px;">
			<span style="font-size: 40px;color:purple"><strong>张智勤也想去</strong></span>
		</p>
		<p style="line-height: 5em; margin-top: 40px;text-align: justify;">北京时间2016
		年11月21，一位名为高睿的嫖客因为嫖娼之后拒绝支付嫖资而被警方带走，到警局后认错态度良好，并保证下次绝不拖欠欠款。
		据悉，这位男士是工商银行的一位软件开发人员，平时无不良爱好。但是由于不满公司加班，为发泄不满铤而走险。由于没有前科，
		这次并未通知其家人，希望他以后重新做人。
		</p>
		
		
		<center>
			<img id="kind" src="images/content/5.jpg"
				style="max-width: 100%; max-height: 100%" />
		</center>
		
		
		<p></p>
		<p style="line-height: 5em; margin-top: 40px;text-align: justify;">百度百科旨在创
		造一个涵盖各领域知识的中文信息收集平台。百度百科强调用户的参与和奉献精神，充分调动互联网用户的力量，汇聚上亿用户的
		头脑智慧，积极进行交流和分享。同时，百度百科实现与的结合，从不同的层次上满足用户对信息的需求。</p>

	</div>


	




	<div id="catalog_container" style="width: 100%; height: 1000px">
		<a href="http://172.30.10.25:9080/baobaotao-spring/jsp/notBuilt.jsp"><font size="8px">1.花儿为什么那样红？</font></a>
		<br>
		<a href=""><font size="8px">2.花儿为什么那样红？</font></a>
		<br>
		<a href=""><font size="8px">3.花儿为什么那样红？</font></a>
	</div>

</body>
</html>