<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../indexh5.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<form class="form-horizontal" action="addTask" method="post">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">任务名称</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="taskName" id="taskName"
					placeholder="Email" >
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">服务器IP</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="serverIp" id="serverIp"
					placeholder="Email">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">被测域名</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="domainName" id="domainName"
					placeholder="Email">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">被测url</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="url" id="url"
					placeholder="Email">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-8">
				<input type="email" class="form-control" name="email" id="email"
					placeholder="Email" />
			</div>
		</div>



		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-8">
				<button type="submit" class="btn btn-default">提交</button>
			</div>
		</div>
	</form>
</body>
</html>