<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<script type="text/javascript">
    var contextPath = "${ctx}";
</script>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
<meta name="renderer" content="webkit">
<!--国产浏览器高速模式-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="穷在闹市" />
<!-- 作者 -->
<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
<!-- 定义页面的最新版本 -->
<meta name="description" content="网站简介" />
<!-- 网站简介 -->
<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
<title>穷在闹市出品</title>

<!-- 公共样式 开始 -->
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="bookmark" href="images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
<!--[if lt IE 9]>
	      	<script src="framework/html5shiv.min.js"></script>
	      	<script src="framework/respond.min.js"></script>
	    <![endif]-->
<script type="text/javascript" src="layui/layui.js"></script>
<!-- 滚动条插件 -->
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.css">
<script src="framework/jquery-ui-1.10.4.min.js"></script>
<script src="framework/jquery.mousewheel.min.js"></script>
<script src="framework/jquery.mCustomScrollbar.min.js"></script>
<script src="framework/cframe.js"></script>
<!-- 仅供所有子页面使用 -->
<!-- 公共样式 结束 -->

<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/login.js"></script>
</head>

<body>

	<!--主体 开始-->
	<div class="login_main">
		<!--轮播图 开始-->
		<div class="layui-carousel lbt" id="loginLbt">
			<div carousel-item>
				<div class="item"
					style="background: url(images/login_bg1.jpg) no-repeat; background-size: cover;"></div>
				<div class="item"
					style="background: url(images/login_bg2.jpg) no-repeat; background-size: cover;"></div>
			</div>
		</div>
		<!--轮播图 结束-->
		<div class="logo">
			<img src="images/nverhong.png" />
			<div>
				<h1>女儿红</h1>
				<p>版本号:1.0.0</p>
			</div>
		</div>
		<div class="form_tzgg">
			<div class="form">
				<div class="title">用户登录</div>
				<div class="con" onclick="getFocus(this)">
					<input type="text" name="loginName" id="loginName"
						lay-verify="loginName" placeholder="请输入您的用户名" autocomplete="off"
						class="layui-input">
				</div>
				<div class="con" onclick="getFocus(this)">
					<input type="password" id="password" name="password" required
						lay-verify="password" placeholder="请输入您的账户密码" autocomplete="off"
						class="layui-input">
				</div>
				<div class="but">
					<button type="button" class="layui-btn" id="button">登录</button>
				</div>
				<div class="apply">
					<a href="${ctx}/UpdatePwd?action=toView">忘记密码</a>
				</div>
			</div>

			<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
			<script>
				layui.use('layer',function () {
					var layer = layui.layer;
					$('#button').click(function(){
						var loginName = $('#loginName').val();
						var password = $('#password').val();
						$.ajax({
							url:contextPath+"/Login?action=toLogin" ,    //这个异步提交到 /Login urlPatterns = { "/Login" } 指定路径，action反射到方法
							data:{"loginName":loginName,"password":password},
							method:"post",
							dataType:"json",
							success:function(data){
								console.log(data);
								if(data.status == 0){
									window.location.href=contextPath + "/Product?action=toViewFirst";
								}else{
									console.log(data.message);
									layer.msg(data.message);
								}
							},

						});
					});

				});


				</script>

			<div class="tzgg">
				<div class="title">推荐学习网站</div>
				<div class="con">
					<ul>
						<li><span>1</span><a href="https://github.com/"
							target="_blank">GitHub</a></li>
						<li><span>2</span><a href="https://www.w3school.com.cn/"
							target="_blank">Java教程</a></li>
						<li><span>3</span><a href="https://www.runoob.com/"
							target="_blank">W3school</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--主体 结束-->
</body>

</html>