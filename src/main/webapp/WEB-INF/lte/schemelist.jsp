<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  Font Awesome
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  Ionicons
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  Theme style
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  <link rel="stylesheet" href="../../dist/css/skins/skin-blue.min.css">

  HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries
  WARNING: Respond.js doesn't work if you view the page via file://
  [if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]

  Google Font
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
Bootstrap 3.3.7
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
AdminLTE App
<script src="../../dist/js/adminlte.min.js"></script> -->
</head>

<script type="text/javascript">
	
</script>
<body>
	<jsp:include page="../../header.jsp"></jsp:include>

	<!-- 员工添加模态框 -->
	<div class="modal fade" id="scheme_add_modal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">业务线</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="businessLine_input"
									placeholder="businessLine" name="businessLine"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">测试页面</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="pageName_input"
									placeholder="pageName" name="pageName"> <span
									class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">客户端</label> <label
								class="radio-inline"> <input type="radio"
								name="clientType" id="inlineRadio1" value="Android"
								checked="checked"> Android
							</label> <label class="radio-inline"> <input type="radio"
								name="clientType" id="inlineRadio2" value="ios"> ios
							</label>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">路由配置</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="scheme_input"
									placeholder="clientType" name="schemeUrl"> <span
									class="help-block"></span>
							</div>

						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="scheme_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 员工修改模态框 -->
	<div class="modal fade" id="scheme_update_modal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<input type="hidden" name="id" id="schemeId_hidden">
						<div class="form-group">
							<label class="col-sm-2 control-label">业务线</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="businessLine_update_static"></p>
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">测试页面</label>
							<div class="col-sm-10">
								<input type="text" class="form-control"
									id="pageName_update_input" placeholder="email" name="pageName">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">客户端</label> <label
								class="radio-inline"> <input type="radio"
								name="clientType" id="inlineRadio1" value="Android"
								checked="checked"> Android
							</label> <label class="radio-inline"> <input type="radio"
								name="clientType" id="inlineRadio2" value="ios"> ios
							</label>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">路由配置</label>
							<div class="col-sm-10">
							<input type="text" class="form-control"
									id="scheme_update_static" placeholder="schemeUrl" name="schemeUrl">
								<!-- <p class="form-control-static" id="scheme_update_static"></p> -->
								<span class="help-block"></span>
							</div>

						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="scheme_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>



	<div class="row">
		<div class="col-xs-12">

			<div class="box">
				<div class="box-header">
					<h3 class="box-title"></h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div id="example1_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap">
						<div class="row">
							<div class="col-sm-2">
								<div class="dataTables_length" id="example1_length">
									<label>Show <select name="example1_length"
										aria-controls="example1" class="form-control input-sm"><option
												value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
											<option value="100">100</option></select> entries
									</label>
								</div>
							</div>
							<div class="col-sm-9">
								<form action="/strong/scheme/list" method="get" id="search_form">
									<div id="example1_filter" class="dataTables_filter">
										<label>schemeId:&nbsp;&nbsp;&nbsp;<input type="text"
											name="id" class="form-control input-sm" placeholder=""
											aria-controls="example1"></label>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>业务线:&nbsp;&nbsp;&nbsp;<input
											type="text" name="businessLine" class="form-control input-sm"
											placeholder="" aria-controls="example1"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>测试页面:&nbsp;&nbsp;&nbsp;<input type="text"
											name="pageName" class="form-control input-sm" placeholder=""
											aria-controls="example1"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="submit" id="search_scheme" style="width: 10%;"
											class="btn btn-inline btn-info btn-sm">搜索</button>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="button" id="scheme_add_modal_btn"
											style="width: 10%;" class="btn btn-inline btn-success btn-sm">添加</button>

									</div>
									<!-- <div id="example1_filter" class="dataTables_filter"></div>
									<div id="example1_filter" class="dataTables_filter"></div> -->
								</form>
							</div>
							<!-- <div class="col-sm-1">
								<div id="example1_filter" class="dataTables_filter">
									<button type="button" id="search_scheme" style="width: 100%;" class="btn btn-inline btn-primary btn-sm">搜索</button>
								</div>
								
							</div>
							<div class="col-sm-1">
								<div id="example1_filter" class="dataTables_filter">
									<button type="button" id="scheme_add_modal_btn" style="width: 100%;" class="btn btn-inline btn-success btn-sm">添加</button>
								</div>
								
							</div> -->
						</div>
						<div class="row">
							<div class="col-sm-12">
								<table id="interfaces_table"
									class="table table-bordered table-striped dataTable"
									role="grid" aria-describedby="example1_info">
									<thead>
										<tr role="row">
											<th class="sorting_asc" tabindex="0" aria-controls="example1"
												rowspan="1" colspan="1" aria-sort="ascending"
												aria-label="Rendering engine: activate to sort column descending"
												style="width: 50px;">schemeId</th>
											<th class="sorting" tabindex="0" aria-controls="example1"
												rowspan="1" colspan="1"
												aria-label="Browser: activate to sort column ascending"
												style="width: 100px;">业务线</th>
											<th class="sorting" tabindex="0" aria-controls="example1"
												rowspan="1" colspan="1"
												aria-label="Platform(s): activate to sort column ascending"
												style="width: 60px;">测试页面</th>
											<th class="sorting" tabindex="0" aria-controls="example1"
												rowspan="1" colspan="1"
												aria-label="Engine version: activate to sort column ascending"
												style="width: 69px;">客户端</th>
											<th class="sorting" tabindex="0" aria-controls="example1"
												rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												style="width: 323px;">shemeUrl</th>
											<th class="sorting" tabindex="0" aria-controls="example1"
												rowspan="1" colspan="1"
												aria-label="CSS grade: activate to sort column ascending"
												style="width: 163px;">操作</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="scheme" items="${requestScope.schemeList }">
											<tr role="row">
												<td>${scheme.id }</td>
												<td>${scheme.businessLine }</td>
												<td>${scheme.pageName }</td>
												<td>${scheme.clientType }</td>
												<td>${scheme.schemeUrl }</td>
												<td><button type="button"
														style="width: 45%; float: left;"
														class="btn btn-block btn-danger btn-xs">删除</button>
													<button type="button" edit-id="${scheme.id }"
														style="width: 45%; float: right; margin-top: 0px;"
														class="btn btn-block btn-primary btn-xs">编辑</button></td>

											</tr>
										</c:forEach>

										<!-- 		<tr role="row" class="odd">
											<td class="sorting_1">Gecko</td>
											<td>Firefox 1.0</td>
											<td>Win 98+ / OSX.2+</td>
											<td>1.7</td>
											<td>A</td>
										</tr> --> 

									</tbody>
									<!-- 	<tfoot>
										<tr>
											<th rowspan="1" colspan="1">Rendering engine</th>
											<th rowspan="1" colspan="1">Browser</th>
											<th rowspan="1" colspan="1">Platform(s)</th>
											<th rowspan="1" colspan="1">Engine version</th>
											<th rowspan="1" colspan="1">CSS grade</th>
										</tr>
									</tfoot> -->
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<div class="dataTables_info" id="example1_info" role="status"
									aria-live="polite">Showing 1 to 10 of 57 entries</div>
							</div>
							<div class="col-sm-7">
								<div class="dataTables_paginate paging_simple_numbers"
									id="example1_paginate">
									<ul class="pagination">
										<c:if test="${page.hasPreviousPage }">
											<li class="paginate_button" id="example1_previous"><a
												href="/strong/scheme/list?page=1" aria-controls="example1"
												data-dt-idx="0" tabindex="0">首页</a></li>

											<li class="paginate_button previous" id="example1_previous"><a
												href="/strong/scheme/list?page=${page.pageNum-1 }"
												aria-controls="example1" data-dt-idx="0" tabindex="0"><span aria-hidden="true">&laquo;</span></a></li>
										</c:if>
										<c:if test="${!page.hasPreviousPage }">
											<li class="paginate_button disabled" id="example1_previous"><a
												href="#" aria-controls="example1"
												data-dt-idx="0" tabindex="0">首页</a></li>

											<li class="paginate_button previous disabled" id="example1_previous"><a
												href="#"
												aria-controls="example1" data-dt-idx="0" tabindex="0"> <span aria-hidden="true">&laquo;</span></a></li>
										</c:if>
										
										<%--  begin="${page.pageNum >= 3 ? page.pageNum -4 : 0 }" end="${page.pageNum <= 7 ? page.pages - 1 : page.pageNum + 4 }" --%>
										<c:forEach items="${page.navigatepageNums }" var="page_num" >

											<c:if test="${page_num==page.pageNum }">
												<li class="paginate_button active"><a
													href="/strong/scheme/list?page=${page_num }"
													aria-controls="example1" data-dt-idx="1" tabindex="0">${page_num }</a></li>
											</c:if>

											<c:if test="${page_num != page.pageNum }">
												<li class="paginate_button "><a
													href="/strong/scheme/list?page=${page_num }"
													aria-controls="example1" data-dt-idx="2" tabindex="0">${page_num }</a></li>
											</c:if>
										</c:forEach>
										<c:if test="${page.hasNextPage }">
											<li class="paginate_button next" id="example1_next"><a
												href="/strong/scheme/list?page=${page.pageNum + 1}"
												aria-controls="example1" data-dt-idx="7" tabindex="0"><span aria-hidden="true">&raquo;</span></a></li>
											<li class="paginate_button next" id="example1_next"><a
												href="/strong/scheme/list?page=${page.pages }"
												aria-controls="example1" data-dt-idx="7" tabindex="0">末页</a></li>
										</c:if>
										<c:if test="${!page.hasNextPage }">
											<li class="paginate_button next disabled" id="example1_next"><a
												href="#"
												aria-controls="example1" data-dt-idx="7" tabindex="0"><span aria-hidden="true">&raquo;</span></a></li>
											<li class="paginate_button next disabled" id="example1_next"><a
												href="#"
												aria-controls="example1" data-dt-idx="7" tabindex="0">末页</a></li>
										</c:if>
									</ul>
								</div>
							</div>
						
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>

	<jsp:include page="../../footer.jsp"></jsp:include>


</body>
<script type="text/javascript">
	$(function() {

		$("li:not(.paginate_button)").removeClass("active");
		$(".treeview-menu").css("display","block");
		$("[href='/strong/scheme/list']").parent().addClass("active");
		
		$("#getRecords").click(function() {
			to_page(1);
		})

		/* 	$("#search_scheme").click(function() {
				$.ajax({
					url : "/strong/scheme/search",
					type : 'post',
					data : $("#search_form").serialize(),
					success : function(result) {

					}
				})
			}) */

		$("button.btn-danger").click(function() {
			delete_scheme(this);
		})

		$("[edit-id]").click(function() {
			var id = $(this).attr("edit-id");
			getScheme(id);
			$("#scheme_update_modal").modal({
				backdrop : "static"
			});
		});

		$("#scheme_add_modal_btn").click(function() {
			$("#scheme_add_modal").modal({
				backdrop : "static"
			});
		});

		$("#scheme_save_btn").click(function() {

			$.ajax({
				url : "/strong/scheme/add",
				data : $("#scheme_add_modal form").serialize(),
				type : 'post',
				success : function(result) {
					if (result.code == 1) {
						$("#scheme_add_modal").modal('hide');
						history.go(0);
					} else {
						alert(result.map.errorMsg.schemeUrl);
						if(undefined != result.map.errorMsg.schemeUrl){
							show_validate_msg("#scheme_input","error",result.map.errorMsg.schemeUrl);
						}
					}
				}
			})
		});

	})
	
	$("#scheme_update_btn").click(function(){
		$.ajax({
			url : "/strong/scheme/update",
			data : $("#scheme_update_modal form").serialize(),
			type : 'post',
			success : function(result) {
				if (result.code ==1) {
					$("scheme_update_modal").modal('hide');
					history.go(0);
				}else{
					alert(result.map.errorMsg.schemeUrl);
					if(undefined != result.map.errorMsg.schemeUrl){
						show_validate_msg("#scheme_input","error",result.map.errorMsg.schemeUrl);
					}
				}
			}
			
		})
	})

	function show_validate_msg(ele,status,msg){
		$(ele).parent().removeClass("has-success has-error");
		$(ele).next("span").text("");
		if("success" == status){
			$(ele).parent().addClass("has-success");
			$(ele).next("span").text(msg);
		}else if("error" == status){
			$(ele).parent().addClass("has-error");
			$(ele).next("span").text(msg);
		}
	}
	
	function getScheme(id) {
		$.ajax({
			url : "/strong/scheme/getSchemeById?id=" + id,
			type : 'get',
			success : function(result) {
				var schemedata = result.map.scheme;
				$("#schemeId_hidden").val(schemedata.id)
				$("#businessLine_update_static").text(schemedata.businessLine);
				$("#pageName_update_input").val(schemedata.pageName);
				$("#scheme_update_modal input[name=clientType]").val(
						[ schemedata.clientType ]);
				$("#scheme_update_static").val(schemedata.schemeUrl);
			}
		})

	}

	function delete_scheme(object) {

		var id = $(object).parent().siblings().first().text();
		if(!confirm("确认要删除  " + $(object).parent().siblings().eq(4).text() + " 吗？"))
			return false;
		$.ajax({
			url : "/strong/scheme/deleteById?id=" + id,
			type : "get",
			success : function(result) {
				/* build_interfaces_table(result); */
				history.go(0);
			}
		})
	}
	function to_page(page) {
		var url = "interfaceRecords?page=" + page;
		$.get(url, function(data, status) {
			build_interfaces_table(data);

			build_page_info(data);

			build_page_nav(data);

		})
	}
	function build_interfaces_table(result) {
		$("#interfaces_table tbody").empty();
		var ints = result.map.pageInfo.list;
		$.each(ints, function(index, item) {

			var idBtn = $("<td></td>").append(item.id);
			var urlBtn = $("<td></td>").append(item.url);
			var methodBtn = $("<td></td>").append(item.method);
			var requestParamBtn = $("<td></td>").append(item.requestParam);
			var requestHeaderBtn = $("<td></td>").append(item.requestHeader);
			var responseResultBtn = $("<td></td>").append(item.responseResult);
			var responseCodeBtn = $("<td></td>").append(item.responseCode);
			var responseHeaderBtn = $("<td></td>").append(item.responseHeader);
			var deleteBtn = $("<button></button>").addClass(
					"btn btn-block btn-danger btn-xs").css({
				"width" : "45%",
				"float" : "left"
			}).append("删除");
			var editBtn = $("<button></button>").addClass(
					"btn btn-block btn-primary btn-xs").css({
				"width" : "45%",
				"float" : "right",
				"margin-top" : "0px"
			}).append("编辑");

			deleteBtn.click(function() {
				delete_interface(this);
			});

			editBtn.click(function() {
			});

			var btn = $("<td></td>").append(deleteBtn).append(editBtn);
			$("#interfaces_table tbody").append(
					$("<tr></tr>").attr("role", "row").append(idBtn).append(
							urlBtn).append(methodBtn).append(requestParamBtn)
							.append(requestHeaderBtn).append(responseResultBtn)
							.append(responseCodeBtn).append(responseHeaderBtn)
							.append(btn));
		})
	}

	function build_page_info(result) {
		$("#example1_info").empty();
		$("#example1_info").append(
				"当前第" + result.map.pageInfo.pageNum + "页，总共"
						+ result.map.pageInfo.pages + "页，总共"
						+ result.map.pageInfo.total + "记录");
	}

	function build_page_nav(result) {
		$(".pagination").empty();

		var firstPage = $("<li></li>").append(
				$("<a></a>").append("首页").attr("href", "#")).addClass(
				"paginate_button");
		var prevPage = $("<li></li>").addClass("paginate_button").append(
				$("<a></a>").attr("href", "#").append("上一页"));
		var pageNum = result.map.pageInfo.pageNum;
		if (pageNum == 1) {
			firstPage.addClass("disabled");
			prevPage.addClass("disabled");
		} else {
			firstPage.click(function() {
				to_page(1);
			});
			prevPage.click(function() {
				to_page(pageNum - 1);
			});
		}
		$(".pagination").append(firstPage).append(prevPage);

		var nextPage = $("<li></li>").addClass("paginate_button").append(
				$("<a></a>").attr("href", "#").append("下一页"));
		var lastPage = $("<li></li>").addClass("paginate_button").append(
				$("<a></a>").attr("href", "#").append("末页"));

		if (pageNum == result.map.pageInfo.pages) {
			nextPage.addClass("disabled");
			lastPage.addClass("disabled");
		} else {
			nextPage.click(function() {
				to_page(pageNum + 1);
			})
			lastPage.click(function() {
				to_page(result.map.pageInfo.pages);
			})
		}

		$.each(result.map.pageInfo.navigatepageNums, function(index, page) {
			var numLi = $("<li></li>").addClass("paginate_button").append(
					$("<a></a>").attr("href",
							"/strong/scheme/list?page=" + page).append(page));
			if (pageNum == page) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				to_page(page);
			})

			$(".pagination").append(numLi);

		})

		$(".pagination").append(nextPage).append(lastPage);

	}
</script>
</html>