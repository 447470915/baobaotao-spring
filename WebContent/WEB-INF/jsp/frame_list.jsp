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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/event.js"></script>
<script type="text/javascript" src="js/tween.js"></script>

<title>宝宝淘论坛登录</title>
</head>

<body>
	<div id="tabMainId" class="tabmain">
		<div id="outerWrap">
		
			<!--左侧目录区域 -->
			<div id="sliderParent"></div>
			<ul id="tabGroupId" class="tabGroup">
				<li class="tabOption selectedTab">培训ds大</li>
				<li class="tabOption">主体课程</li>
				<li class="tabOption">高端课程</li>
				<li class="tabOption">就业传奇</li>
				<li class="tabOption">珠峰学生会</li>
				<li class="tabOption">讲师招聘</li>
				<li class="tabOption">远程教育</li>
				<li class="tabOption">新增目录1</li>
				<li class="tabOption">新增目录2</li>
				<li class="tabOption">新增目录3</li>
				<li class="tabOption">新增目录4</li>
				<li class="tabOption">新增目录5</li>
				<li class="tabOption">新增目录6</li>
				<li class="tabOption">新增目录7</li>
				<li class="tabOption">新增目录8</li>
				<li class="tabOption">新增目录9</li>
				<li class="tabOption">新增目录10</li>
				<li class="tabOption">新增目录11</li>
			</ul>
			
			<!--右侧内容区域  -->
			<div id="container">
				<div id="content">

					<div class="tabContent selectedContent">
						<!-- 1JavaScript培训:优势 -->
						<h3>我们专注JavaScript培训</h3>
						<dl>
							<dt>
								<span class="high">教育理念：</span>
							</dt>
							<dd>
								认识到每个人的优势和价值，进行不同的指导和引导、推荐到更适合的平台。我们不仅仅是努力，不仅仅是传授技术，更重要的是：<span
									class="colorange">我们是发现你的伯乐！</span>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="high">传奇就业：</span>
							</dt>
							<dd>
								<p>超过50%的学员工资翻倍或进入百度、新浪、腾讯等知名公司！</p>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="high">强悍课程：</span>
							</dt>
							<dd>
								<p>原生javaScript、算法及编程思想、设计模式、Ajax后台技术,HTML5+CSS3移动端客户端开发，Node.js、jQuery、AngularJS、Backbone.js框架讲解
								</p>
							</dd>
							<dd>
								<p>
									<a target="_blank" class="fbold colorange"
										href="http://www.17sucai.com">查看2014年珠峰培训JavaScript培训课程大纲</a>
								</p>
							</dd>
							<dd>
								<p>
									<img src="images/js.png" alt="">
								</p>
							</dd>
						</dl>
						<dl>
							<dt>
								<span class="high">特色</span>
							</dt>
							<dd>
								<p>
									<a href="###">自编的针对性教材</a><a href="http://www.17sucai.com">超过300讲深度视频</a><a
										href="###">海量面试题讲解</a><br> <a href="###">直接进百度等公司的推荐机会</a>
								</p>
							</dd>
						</dl>
					</div>

					<div class="tabContent">
						<!-- 3 主体课程 -->
						<h3>内容：全面、系统、深入的JavaScript培训课程</h3>
						<dl>
							<dt>知识点纵向大纲：</dt>
							<p>
								<a target="_blank" href="http://www.17sucai.com">查看2014年珠峰培训JavaScript课程大纲</a>
							</p>
						</dl>
						<dl>
							<dt class="high">重点模块式课程大纲</dt>
							<dd>1、实用至上，高效为王的DOM库（单例模式）</dd>
							<dd>2、比jQuery动画还精彩的TWEEN算法动画库</dd>
							<dd>3、使用观察者设计模式，从原理入手的事件库</dd>
							<dd>4、开发自己的Ajax库</dd>
							<dd>5、模块化开发之一：选项卡框架</dd>
							<dd>6、模块化开发之二：可扩展自定义事件的完美拖拽框架</dd>
							<dd>7、模块化开发之三：弹出层框架</dd>
						</dl>
						<dl>
							<dt class="high">特色</dt>
							<dd>
								<p>
									<a href="###">自己编写的教材</a><a href="http://www.17sucai.com">超过300讲的视频</a><a
										href="###">海量面试题讲解</a>
								</p>
								<p>
									<a href="###">直接进百度等公司的推荐机会</a>
								</p>
							</dd>
						</dl>
					</div>

					<div class="tabContent">
						<h3>把JavaScript进行到底！</h3>
						<dl>
							<dt>最大亮点：</dt>
							<dd>主流的、引领前沿的新技术，邀请知名公司的前端技术大牛讲解的饕餮大餐，可谓是群星荟萃！我们的目标就是：以珠峰为起点，让你飞的更高！</dd>
						</dl>
						<dl>
							<dt>高端课程：</dt>
							<dd>
								<p>1、HTML5移动端开发</p>
								<p>2、CSS3及响应式布局</p>
								<p>3、Node.js</p>
								<p>4、MVC富客户端开发</p>
								<p>5、angularJS框架</p>
								<p>
									<img src="images/gdkc.png" alt="">
								</p>
							</dd>
						</dl>
					</div>

					<div class="tabContent">
						<!-- 就业传奇 -->
						<h3>就业好才是硬道理</h3>
						<dl>
							<dt>就业是一个培训班最有说服力的结果</dt>
							<dd>
								<p>网站做的再好，老师吹的再玄乎，看了就业后的选择，才是理性选择。</p>
							</dd>
						</dl>
						<dl>
							<dt>奇迹是努力的代名词：就业背后是汗水.</dt>
							<dd>以强悍的课程体系为依托，以珠峰同学会为人脉。看一个培训机构的就业，是对一个培训机构最理性的评价。就业不好的培训班，都是在骗钱！！</dd>
						</dl>
						<dl class="witness">
							<dt>奇迹的见证：</dt>
							<dd>
								<p>
									<span class="ele"></span><a target="_blank"
										href="http://www.17sucai.com"><em>我和我的小伙伴们都惊呆了：</em>2014新年伊始，四个同学入职进百度</a>
								</p>
								<p>
									<span class="ele"></span><a target="_blank"
										href="http://www.17sucai.com"><em>学完之后工资真的能翻一翻吗？</em>这已经不是个例</a>
								</p>
								<p>
									<span class="ele"></span><a target="_blank"
										href="http://www.17sucai.com"><em>逆天了：</em>一个班上70%的同学工资翻倍或进百度搜狐等公司</a>
								</p>
								<p>
									<span class="ele"></span><a target="_blank"
										href="http://www.17sucai.com">看我们有多少同学在百度新浪网易腾讯这些大公司</a>
								</p>
								<p>
									<span class="ele"></span><a target="_blank"
										href="http://www.17sucai.com"><em>看我们的学员有多牛：</em>应届毕业生，一样也成为百度正式员工</a>
								</p>
								<p>
									<span class="ele"></span><a target="_blank"
										href="http://www.17sucai.com"><em>我们的在线培训同样给力：</em>上海美女月薪超10K进外企</a>
								</p>
							</dd>
						</dl>
					</div>

					<div class="tabContent">
						<h3>珠峰学生会，大家好才是真的好</h3>
						<dl>
							<dt>学生会的昨天</dt>
							<dd>
								<p>珠峰的学生永远是珠峰最宝贵的资源，是珠峰培训发展和壮大的依托。昨天，他们陪珠峰从创业到发展，他们没有嫌弃那个弱小珠峰，他们没有嫌弃那个像农村大叔一样的珠峰老师，没有嫌弃那两间简陋的教室，一起走过最艰难的岁月。</p>
							</dd>
						</dl>
						<dl>
							<dt>学生会的今天</dt>
							<dd>
								<p>今天，同学们遍布北京互联网公司，在百度、腾讯、新浪、搜狐等公司的就有一百多人。珠峰培训传统，一向是学习上老同学带新同学，在工作机会上老同学推荐新同学.正因为广大同学，珠峰培训才有了这么丰富的讲师资源，才有了更多更广的就业渠道。</p>
							</dd>
						</dl>
						<dl>
							<dt>学生会的明天</dt>
							<dd>
								<p>明天，我们会更好！！珠峰和所有同学共同成长！！我们在一起战斗，不孤单！</p>
							</dd>
						</dl>
						<p>
							<span class="high" style="margin: 0 10px;">不定期的组织活动</span><span
								class="high" style="margin: 0 10px;">前沿技术分享</span><span
								class="high" style="margin: 0 10px;">工作的交流推荐平台</span><span
								class="high" style="margin: 0 10px;">展示自己的机会</span>
						</p>
						<p>
							<a>学生是珠峰的信仰。每一位同学都是佛，我只是一位拜佛人！</a>
						</p>
					</div>

					<div class="tabContent">
						<!--  招聘讲师 -->
						<h3>珠峰培训需要优秀的你加入</h3>
						<dl>
							<dt>招聘兼职讲师</dt>
							<dd>长期招聘HTML5移动端开发讲师、node.js讲师、其它经验丰富的JS开发讲师</dd>
						</dl>
						<dl>
							<dt>招聘要求：</dt>
							<dd>
								1、有一颗慈悲心。佛说：知众生之苦,勇入苦海，以救众生出苦海为乐，是慈悲心。报班的同学，多数没有编程基础，讲师应深刻体会初学者的心理，耐心的有针对性的鼓励、讲解和辅导！</dd>
							<dd>2、有一颗平等舍与的心。报班的同学成绩不一，对成绩好的莫偏爱，对成绩不好的冷淡。而应该是让成绩好的更上一层楼，让成绩不好的有信心提高自己。</dd>
							<dd>3、有扎实的代码基本功，丰富的开发经验</dd>
						</dl>
						忌浮燥，忌功利，态度比技术更重要。当老师，不是给自己找存在感，而是通过让别人更好的存在，来成就自己！
						<dl>
							<dt>薪资待遇</dt>
							<dd>按不同级别确定优厚的日薪,奖金另有计算方案。</dd>
							<dd>
								需免费试讲一天后，评估上岗。具体标准，请联系<a href="http://www.17sucai.com"
									target="blank">QQ咨询:123456789</a>
							</dd>
						</dl>
					</div>

					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>17素材网（www.17sucai.com）</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>

					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>

					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
							<dd>网站正在升级中，敬请期待</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
							<dt>17素材网</dt>
							<dd>17素材网专注于提供免费素材下载,其内容涵盖设计素材,PSD素材,矢量素材,图片素材,图标素材,设计字体等免费素材.下载免费素材尽在17素材网免费素材网</dd>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
						</dl>
					</div>
					<div class="tabContent">
						<!-- 远程教育 -->
						<h3>新增内容</h3>
						<dl>
							<dt>远程教育</dt>
						</dl>
					</div>
					


				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//计算div容器的高度
		var w=document.documentElement.clientWidth ;//可见区域宽度
 		var h=document.documentElement.clientHeight;//可见区域高度
 		document.getElementById("tabMainId").style.height=h+"px";
 		document.getElementById("tabGroupId").style.height=h+"px";
 		document.getElementById("container").style.height=h+"px";
	 
		var container = document.getElementById('container');
		var content = document.getElementById('content');
		var oDivs = DOM.children(content, "div");//获取content下的所有div队列
		oDivs[0].st = 0;//st是什么鬼
		for (var i = 1; i < oDivs.length; i++) {
			oDivs[i].st = oDivs[i].offsetTop;
		}
		var oLis = DOM.getElesByClass("tabOption");//获取tabOption类的所有childnodes
		var flag = 0;
		var upFlag = oLis.length;
		var startX = 0;
		var startY = 0;
		
		(function() {//浏览器事件监控程序
			//container.addEventListener('touchstart', sn, false);
			container.addEventListener('touchend', fn, false);

			slider = document.createElement('span');
			slider.id = "slider";

			slider.style.height = container.offsetHeight
					* (container.offsetHeight / content.offsetHeight) + "px";//计算下拉条的长度
			sliderParent.appendChild(slider);//放到父slider里
			//on(slider, "mousedown", down);

			function sn(e) {
				//当屏幕有多个touch或者页面被缩放过，就不执行move操作
				if (event.targetTouches.length > 1 || event.scale
						&& event.scale !== 1)
					return;
				var touch = event.targetTouches[0];
				startX = touch.pageX;
				startY = touch.pageY;
				return false;
			}
			;

			function fn(e) {

				//这是在计算什么东西
				/*
				slider.style.top = container.scrollTop * container.offsetHeight
						/ content.offsetHeight + "px";

				slider.offsetTop
						* (content.offsetHeight / container.offsetHeight); */
						
				var st = container.scrollTop;
				if (st > this.preSt) {
					for (var j = 0; j < oLis.length; j++) {
						if (st < oDivs[j].st)
							break;
					}
					if (oLis[j - 2] && this.preLi !== j) {
						if ((j) > (flag + 1)) {
							//DOM.removeClass(oLis[j - 2], "selectedTab");//在计算左侧目录的选择项
							
							for (var k = 0; k < oLis.length; k++) {
								DOM.removeClass(oLis[k], "selectedTab");
							}
							
							DOM.addClass(oLis[j - 1], "selectedTab");
						}
					}
					flag = j - 1;
				} else if (st < this.preSt) {
					for (var j = oLis.length - 1; j >= 0; j--) {
						if (st > oDivs[j].st)
							break;
					}
					if (oLis[j + 2] && this.preLi !== j) {
						if (flag === undefined)
							return;
						if ((j) < (flag)) {
							for (var k = 0; k < oLis.length; k++) {
								DOM.removeClass(oLis[k], "selectedTab");
							}
							;
							DOM.addClass(oLis[j + 1], "selectedTab");
							upFlag = j + 1;
						}
					}
				}
				this.preSt = st;
				if (e.preventDefault)
					e.preventDefault();
				return false;
			}
			;

			var tabPannel1 = document.getElementById("outerWrap");
			var oLis = DOM.children(DOM.children(tabPannel1, "ul")[0], "li");
			for (var i = 0; i < oLis.length; i++) {
				oLis[i].onclick = changeTab;
			}
			;
			function changeTab() {
				var index = DOM.getIndex(this);
				for (var i = 0; i < oLis.length; i++) {
					DOM.removeClass(oLis[i], "selectedTab");
				}
				DOM.addClass(this, "selectedTab");
				animate(container, {
					scrollTop : oDivs[index].st
					
				}, 500, 1);
				var t = oDivs[index].st * container.offsetHeight
						/ content.offsetHeight;
				animate(slider, {
					top : t
				}, 50000,4);
			}
		})();
	</script>

</body>
</html>
