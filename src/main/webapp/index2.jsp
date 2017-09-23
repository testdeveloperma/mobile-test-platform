<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>自动化实验室</title>
<meta name="keywords" content="侧边导航菜单(可分组折叠)">
<meta name="description" content="侧边导航菜单(可分组折叠)" />
<meta name="HandheldFriendly" content="True" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="static/css/bootstrap.css" />
<!--bootstrap核心样式库-->
<link rel="stylesheet" href="static/css/bootstrap-theme.min.css" />
<!--bootstrap的主题样式库-->
<script src="static/js/jquery-1.12.4.min.js"></script>
<script src="static/js/bootstrap.js"></script>
<!--bootstrap的核心js库-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
<style>
.panel-group {
	max-height: 770px;
	overflow: auto;
}

.leftMenu {
	margin: 10px;
	margin-top: 5px;
}

.leftMenu .panel-heading {
	font-size: 14px;
	padding-left: 20px;
	height: 36px;
	line-height: 36px;
	color: white;
	position: relative;
	cursor: pointer;
} /*转成手形图标*/
.leftMenu .panel-heading span {
	position: absolute;
	right: 10px;
	top: 12px;
}

.leftMenu .menu-item-left {
	padding: 2px;
	background: transparent;
	border: 1px solid transparent;
	border-radius: 6px;
}

.leftMenu .menu-item-left:hover {
	background: #C4E3F3;
	border: 1px solid #1E90FF;
}
</style>
</head>

<body>
	<div class=""></div>
	<div class="row">
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!--
                	描述：导航头部
                -->
				<div class="navbar-header">
					<a class="navbar-brand" href="index.jsp">
						<img src="img/elonglogo.png" style="width: 80px; height: 20px; display: inline-block;" /> 艺龙旅行网
					</a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar">
						<span class="sr-only">切换菜单</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!--主菜单部分-->
				<div class="collapse navbar-collapse" id="top-bar">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="addPage">任务提测<span class="sr-only">(当前选中)</span></a>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown">任务列表
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">员工入职</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#">设备资产</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#">请假</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">我的任务</a>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown">检索
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">通知</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#">审批</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#">anyoneelse</a>
								</li>
							</ul>
						</li>
						
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">退出</a></li>
						<li>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员</a>
							<ul class="dropdown-menu">
								<li><a href="#">账户信息</a></li>
								<li><a href="repwd.html" data-toggle="modal" data-target="#repwdModel">修改口令</a></li>
							</ul>
						</li>
					</ul>
					
					
				</div>
			</div>
		</nav>
	</div>
	<br/><br/><br/>
	<div class="row">
		<div class="col-md-2">
			<div class="panel-group table-responsive" role="tablist">
				<div class="panel panel-primary leftMenu">
					<!-- 利用data-target指定要折叠的分组列表 -->
					<div class="panel-heading" id="collapseListGroupHeading1"
						data-toggle="collapse" data-target="#collapseListGroup1"
						role="tab">
						<h4 class="panel-title">
							客户端接口自动化 <span class="glyphicon glyphicon-chevron-up right"></span>
						</h4>
					</div>
					<!-- .panel-collapse和.collapse标明折叠元素 .in表示要显示出来 -->
					<div id="collapseListGroup1" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="collapseListGroupHeading1">
						<ul class="list-group">
							<li class="list-group-item">
								<!-- 利用data-target指定URL -->
								<button class="menu-item-left" data-target="test2.html" onclick="menuClick('getInterfaceRecord')">
									<span class="glyphicon glyphicon-triangle-right"></span>mock数据
								</button>
							</li>
							<li class="list-group-item">
								<!-- 利用data-target指定URL -->
								<button class="menu-item-left" data-target="test2.html" onclick="menuClick('getInterfaceRecord')">
									<span class="glyphicon glyphicon-triangle-right"></span>请求测试结果
								</button>
							</li>
							
							
						</ul>
					</div>
				</div>
				<!--panel end-->
				<div class="panel panel-primary leftMenu">
					<div class="panel-heading" id="collapseListGroupHeading2"
						data-toggle="collapse" data-target="#collapseListGroup2"
						role="tab">
						<h4 class="panel-title">
							分组2 <span class="glyphicon glyphicon-chevron-down right"></span>
						</h4>
					</div>
					<div id="collapseListGroup2" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="collapseListGroupHeading2">
						<ul class="list-group">
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项2-1
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项2-2
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项2-3
								</button>
							</li>
							<li class="list-group-item">
								<button class="menu-item-left">
									<span class="glyphicon glyphicon-triangle-right"></span>分组项2-4
								</button>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-10" id="current">内容</div>
	</div>
	
	<!-- jQuery1.11.3 (necessary for Bo otstrap's JavaScript plugins) -->
<!-- 	<script src="js/jquery-1.11.3.min.js "></script>
 -->	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- <script src="js/bootstrap.min.js "></script> -->
	<script>
		$(function() {
			$(".panel-heading").click(function(e) {
				/*切换折叠指示图标*/
				$(this).find("span").toggleClass("glyphicon-chevron-down");
				$(this).find("span").toggleClass("glyphicon-chevron-up");
			});
			

	           //这是给div的一个初始页面
/* 	      $("#current").load('${pageContext.request.contextPath}/getInterfaceRecord');
 */		});
			       
	        var menuClick = function(menuUrl) {
	           
	            $("#current").load('${pageContext.request.contextPath}/getInterfaceRecord');
	        };
	</script>
</body>

</html>