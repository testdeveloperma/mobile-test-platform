<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../../index.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>

	<table class="table table-hover table-bordered">
		<tr class="">
			<th>任务名称</th>
			<th>被测url</th>
			<th>被测域名</th>
			<th>服务器ip</th>
			<th>email</th>
			<th>任务状态</th>
			<th>查看</th>
		</tr>
		<c:forEach var="tk" items="${requestScope.tasks }">
			<tr>
				<td>${tk.taskName }</td>
				<td>${tk.url }</td>
				<td>${tk.domainName }</td>
				<td>${tk.serverIp }</td>
				<td>${tk.email }</td>
				<td>${tk.status }</td>
				<td><a href="">查看</a></td>
			</tr>
		</c:forEach>
	</table>
	</table>
	
</body>
</html>