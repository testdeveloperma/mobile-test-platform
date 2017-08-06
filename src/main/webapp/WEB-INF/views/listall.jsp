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
<script type="text/javascript">
	$(function(){
		
	})
</script>
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
	<nav aria-label="Page navigation">
  <ul class="pagination">
  	<c:if test="${requestScope.page.pageNum ==1}">
  	    <li class="disabled"><a href="listall?page=1">首页</a></li>
  	</c:if>
  	<c:if test="${requestScope.page.pageNum !=1}">
  	    <li><a href="listall?page=1">首页</a></li>
  	</c:if>
  	<c:if test="${requestScope.page.hasPreviousPage }">
  		<li>
      <a href="listall?page=${requestScope.page.prePage }" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
  	</c:if>
  	<c:if test="${!requestScope.page.hasPreviousPage }">
	  	<li class="disabled">
	      <a href="listall?page=${requestScope.page.prePage }" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
  	</c:if>
    
    <c:if test="${requestScope.page.pageNum < 3}">
    <c:forEach var="i" begin="1" end="${requestScope.page.pages > 5 ? 5 : requestScope.page.pages}">
    	<c:if test="${requestScope.page.pageNum == i}">
    		<li class="active"><a href="listall?page=${i}">${i }</a></li>
    	</c:if>
    	<c:if test="${requestScope.page.pageNum != i}">
    		<li><a href="listall?page=${i}">${i }</a></li>
    	</c:if>
    	
    <!-- ${requestScope.page.pages > 5 ? 5 : 3} -->
    </c:forEach>
    </c:if>
    <c:if test="${requestScope.page.pageNum >= 3}">
    	<li><a href="listall?page=${requestScope.page.pageNum -2}">${requestScope.page.pageNum -2}</a></li>
    	<li><a href="listall?page=${requestScope.page.pageNum -1}">${requestScope.page.pageNum -1}</a></li>
   		<li class="active"><a href="listall?page=${requestScope.page.pageNum }">${requestScope.page.pageNum }</a></li>
    	<c:forEach var="i" begin="1" end="${requestScope.page.pages - page.pageNum > 2 ? 2 : page.pages - page.pageNum}">
    		<li><a href="listall?page=${requestScope.page.pageNum + i }">${requestScope.page.pageNum + i }</a></li>
    	</c:forEach>
    </c:if>
    
 	
  	<c:if test="${requestScope.page.hasNextPage }">
  		<li>
      <a href="listall?page=${requestScope.page.nextPage }" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    </li>
  	</c:if>
  	<c:if test="${!requestScope.page.hasNextPage }">
	  	<li class="disabled">
	      <a href="listall?page=${requestScope.page.nextPage }" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
  	</c:if>
  	
  	<c:if test="${requestScope.page.isLastPage}">
     <li class="disabled"><a href="listall?page=${requestScope.page.pages}">末页</a></li>	
  	</c:if>
  	<c:if test="${!requestScope.page.isLastPage}">
     <li><a href="listall?page=${requestScope.page.pages}">末页</a></li>	
  	</c:if>
  </ul>
</nav>
	
</body>
</html>