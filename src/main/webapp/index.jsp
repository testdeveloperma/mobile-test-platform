<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<!--设置IE8的兼容模式-->
		<meta name="viewport" content="width-device-width,initial-scale=1,minimum-scale=1.0,maxium-scale=1.0,user-scalable=no" />
		<!--设置页面的缩放模式，根据设备进行自适应大小-->

		<link rel="stylesheet" href="static/css/bootstrap.css" />
		<!--bootstrap核心样式库-->
		<link rel="stylesheet" href="static/css/bootstrap-theme.min.css" />
		<!--bootstrap的主题样式库-->
		<script src="static/js/jquery-1.12.4.min.js"></script>
		<script src="static/js/bootstrap.js"></script>
		<!--bootstrap的核心js库-->

		<!--[if it IE 9]>
		<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		<title>BootStrap项目</title>
	</head>

	<body>
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
							<a  class="dropdown-toggle" data-toggle="dropdown">任务列表
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="listall">员工入职</a>
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
									<a href="listall">任务</a>
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
					<form class="navbar-form navbar-left form-inline">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="请输入信息检索"/>
						</div>
						<button type="submit" class="btn btn-success">全文检索</button>
					</form>
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
		
		<!-- <div class="modal fade" id="repwdModel">
			<div class="modal-dialog">
				<div class="modal-content">
					
				</div>
			</div>
		</div> -->
	</body>

</html>