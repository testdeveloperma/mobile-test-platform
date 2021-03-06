<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-xs-12">

		<div class="box">
			<div class="box-header">
				<h3 class="box-title">Data Table With Full Features</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div id="example1_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap">
					<div class="row">
						<div class="col-sm-6">
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
						<div class="col-sm-6">
							<div id="example1_filter" class="dataTables_filter">
								<label>Search:<input type="search"
									class="form-control input-sm" placeholder=""
									aria-controls="example1"></label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<table id="interfaces_table"
								class="table table-bordered table-striped dataTable" role="grid"
								aria-describedby="example1_info">
								<thead>
									<tr role="row">
										<th class="sorting_asc" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1" aria-sort="ascending"
											aria-label="Rendering engine: activate to sort column descending"
											style="width: 50px;">case_id</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Browser: activate to sort column ascending"
											style="width: 200px;">请求url</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Platform(s): activate to sort column ascending"
											style="width: 60px;">method</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="Engine version: activate to sort column ascending"
											style="width: 169px;">请求参数</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="CSS grade: activate to sort column ascending"
											style="width: 123px;">请求header</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="CSS grade: activate to sort column ascending"
											style="width: 123px;">响应body</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="CSS grade: activate to sort column ascending"
											style="width: 50px;">status</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="CSS grade: activate to sort column ascending"
											style="width: 123px;">响应header</th>
										<th class="sorting" tabindex="0" aria-controls="example1"
											rowspan="1" colspan="1"
											aria-label="CSS grade: activate to sort column ascending"
											style="width: 163px;">操作</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach var="record" items="${requestScope.records }">
										<tr role="row">
											<td>${record.id }</td>
											<td>${record.url }</td>
											<td>${record.method }</td>
											<td>${record.requestParam }</td>
											<td>${record.requestHeader }</td>
											<td>${record.responseResult }</td>
											<td>${record.responseCode }</td>
											<td>${record.responseHeader }</td>
											<td><button type="button"
													style="width: 45%; float: left;"
													class="btn btn-block btn-danger btn-xs">删除</button>
												<button type="button"
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
									<li class="paginate_button previous disabled"
										id="example1_previous"><a href="#"
										aria-controls="example1" data-dt-idx="0" tabindex="0">首页</a></li>
									<li class="paginate_button previous disabled"
										id="example1_previous"><a href="#"
										aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li>
									<li class="paginate_button active"><a href="#"
										aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
									<li class="paginate_button "><a href="#"
										aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li>
									<li class="paginate_button "><a href="#"
										aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
									<li class="paginate_button "><a href="#"
										aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li>
									<li class="paginate_button "><a href="#"
										aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
									<li class="paginate_button "><a href="#"
										aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
									<li class="paginate_button next" id="example1_next"><a
										href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li>
									<li class="paginate_button next" id="example1_next"><a
										href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">末页</a></li>
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




<script type="text/javascript">
	$(function() {
		$("#getRecords").click(function(){
			to_page(1);
		})
		$("button.btn-danger").click(function(){
			alert("this:" + this);
			delete_interface(this);	
		})
		
		$("button.btn-primary").click(function(){
			var id = $(this).parent().siblings().first().text();
			var url = "interfaceRecord/" + id;
			loadUrl(url);
			
		})
	})
	
	function delete_interface(object) {
		
			var id = $(object).parent().siblings().first().text();
			alert("id：" + id)
			$.ajax({
				url : "interfaceRecord/" + id,
				type : "delete",
				success : function(result) {
					build_interfaces_table(result);
				}
			})
		}
	function to_page(page){
		var url = "interfaceRecords?page=" + page;
		$.get(url,function(data,status){
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
			
			deleteBtn.click(function(){
				delete_interface(this);	
			});
			
			editBtn.click(function(){
			});
			
			var btn = $("<td></td>").append(deleteBtn).append(editBtn);
			$("#interfaces_table tbody").append($("<tr></tr>").attr("role","row").append(idBtn).append(urlBtn).append(
					methodBtn).append(requestParamBtn).append(requestHeaderBtn)
					.append(responseResultBtn).append(responseCodeBtn).append(
							responseHeaderBtn).append(btn));
		})
	}

	function build_page_info(result) {
		$("#example1_info").empty();
		$("#example1_info").append(
				"当前第" + result.map.pageInfo.pageNum + "页，总共"
						+ result.map.pageInfo.pages + "页，总共"
						+ result.map.pageInfo.total + "记录");
	}
	
	function build_page_nav(result){
		$(".pagination").empty();
		
		var firstPage = $("<li></li>").append($("<a></a>").append("首页").attr("href","#")).addClass("paginate_button");
		var prevPage = $("<li></li>").addClass("paginate_button").append($("<a></a>").attr("href","#").append("上一页"));
		var pageNum = result.map.pageInfo.pageNum;
		if(pageNum == 1){
			firstPage.addClass("disabled");
			prevPage.addClass("disabled");
		}else{
			firstPage.click(function(){
				to_page(1);
			});
			prevPage.click(function(){
				to_page(pageNum - 1);
			});
		}
		$(".pagination").append(firstPage).append(prevPage);
		
 		var nextPage = $("<li></li>").addClass("paginate_button").append($("<a></a>").attr("href","#").append("下一页"));
		var lastPage = $("<li></li>").addClass("paginate_button").append($("<a></a>").attr("href","#").append("末页"));
		
		if(pageNum == result.map.pageInfo.pages){
			nextPage.addClass("disabled");
			lastPage.addClass("disabled");
		}else{
			nextPage.click(function(){
				to_page(pageNum + 1);
			})
			lastPage.click(function(){
				to_page(result.map.pageInfo.pages);
			})
		}
		
		$.each(result.map.pageInfo.navigatepageNums,function(index,page){
			var numLi = $("<li></li>").addClass("paginate_button").append($("<a></a>").attr("href","#").append(page));
			if(pageNum == page){
				numLi.addClass("active");
			}
			numLi.click(function(){
				to_page(page);
			})
			
			$(".pagination").append(numLi);
			
		})
		
		$(".pagination").append(nextPage).append(lastPage); 
	
	}
	
</script>
