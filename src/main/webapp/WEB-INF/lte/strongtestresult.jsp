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
<style>
.right{
right:70;
}

.carousel-control{
width:5%;
}

</style>

<script type="text/javascript">
	
</script>
<body>
	<jsp:include page="../../header.jsp"></jsp:include>

	<!-- 员工添加模态框 -->
	<div class="modal fade" id="testtask_add_modal" tabindex="-1"
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
							<label class="col-sm-2 control-label">测试页面</label>
							<div class="col-sm-10">
								<select class="form-control" name="schemeId" value=""></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">权重配置</label>
							<div class="col-sm-10">
								<select class="form-control" name="weightconfigId" value=""></select>
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
								<input type="text" class="form-control" id="testtask_input"
									placeholder="任务执行次数" name="times"> <span
									class="help-block"></span>
							</div>

						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="testtask_save_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 员工修改模态框 -->
	<div class="modal fade" id="testtask_update_modal" tabindex="-1"
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
									id="testtask_update_static" placeholder="testtaskUrl"
									name="testtaskUrl">
								<!-- <p class="form-control-static" id="testtask_update_static"></p> -->
								<span class="help-block"></span>
							</div>

						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						id="testtask_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>



	<div class="row">
		<section class="content"> <!-- COLOR PALETTE -->
		<%-- <div class="box box-default color-palette-box">
			<div class="box-header with-border">
				<h3 class="box-title">
					<i class="fa fa-tag"></i> 测试任务信息
				</h3>
			</div>
			<div class="box-body">
				<p>
					<b>业务线：</b>${taskdetail.scheme.businessLine }</p>
				<p>
					<b>测试页面：</b>${taskdetail.scheme.pageName }</p>
				<p>
					<b>路由配置：</b>${taskdetail.scheme.schemeUrl }</p>
				<p>
					<b>客户端类型：</b>${taskdetail.scheme.clientType }</p>
				<p>
					<b>权重配置：</b>${taskdetail.weightConfig.jsonStr }</p>
				<p>
					<b>业务线：</b>${taskdetail.scheme.businessLine }</p>
				<p>
					<b>业务线：</b>${taskdetail.scheme.businessLine }</p>
			</div>

		</div> --%>
		<!-- /.box --> <!-- START ALERTS AND CALLOUTS -->
		<!-- <h2 class="page-header">Alerts and Callouts</h2> -->

		<div class="row" style="background:#ffffff">
		
			<div class="col-md-3">
				<div class="box box-default">
					<!-- <div class="box-header with-border">
						<i class="fa fa-warning"></i>

						<h3 class="box-title">Alerts</h3>
					</div> -->
					<!-- /.box-header -->
					<div class="box-body">
					
						<c:if test="${strongresultList[0] != null }">
					
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<ol class="carousel-indicators">
							</ol>
							<!-- style="width: 20%; height: 10%;" -->
							<div class="carousel-inner">
								<c:forEach  var="strongresult" varStatus="iter"  items="${strongresultList }">
									
								<c:if test="${iter.first }">
								<div class="item active">
									<img data-id="${strongresult.id }" index="0"
										src="${strongresult.picturePath }"
										alt="First slide">

									<div class="carousel-caption">${strongresult.id }</div>
								</div>
								</c:if>
								<c:if test="${!iter.first }">
								<div class="item">
									<img data-id="${strongresult.id }" index="${iter.index }"
										src="${strongresult.picturePath }"
										alt="First slide">

									<div class="carousel-caption">${strongresult.id }</div>
								</div>
								</c:if>							
						</c:forEach>
							</div>
							<a class="left carousel-control" href="#carousel-example-generic"
								 data-slide="prev"> <span class="fa fa-angle-left"></span>
							</a> <a class="right carousel-control" 
								href="#carousel-example-generic" data-slide="next"> <span
								class="fa fa-angle-right"></span>
							</a>
						</div>
						
					</c:if>
					</div>
					
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
			<div class="col-md-9">
			<p>
					<b>业务线：</b>${taskdetail.scheme.businessLine }</p>
				<p>
					<b>测试页面：</b>${taskdetail.scheme.pageName }</p>
				<p>
					<b id="scheme" schemeval="${taskdetail.scheme.schemeUrl }">路由配置：</b>${taskdetail.scheme.schemeUrl }</p>
				<p>
					<b>客户端类型：</b>${taskdetail.scheme.clientType }</p>
				<p>
					<b>权重配置：</b>${taskdetail.weightConfig.jsonStr }</p>					
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;
				<c:forEach var="strongresult" items="${strongresultList }">
							<img style="width: 8%; height: 10%;" alt="i am pic"
								src="${strongresult.picturePath }">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</c:forEach>
			</div>
			
		<!-- /.col -->
	<!-- 	<div class="box-body">
				
			</div> -->
	</div>

	<div>
		<div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
            <c:forEach var="strongresult2" items="${strongresultList }">
            	<c:if test="${strongresult2.crashDetail != null }">
            		<li data-id="${strongresult2.id }"><a href="#crash_${strongresult2.id }" data-toggle="tab">Crash ${strongresult2.id }</a></li>
            	</c:if>
            	
            </c:forEach>
             <!--  <li class=""><a href="#tab_1" data-toggle="tab">Tab 1</a></li>
              <li><a href="#tab_2" data-toggle="tab">Tab 2</a></li>
              <li><a href="#tab_3" data-toggle="tab">Tab 3</a></li> -->
              <!-- <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                  Dropdown <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
                  <li role="presentation" class="divider"></li>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
                </ul>
              </li> -->
              <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
            </ul>
            <div class="tab-content">
            <c:forEach var="strongresult" items="${strongresultList }">
            	<c:if test="${strongresult.crashDetail != null }">
            		<div detail-id="${strongresult.id}" class="tab-pane" id="crash_${strongresult.id}">
            	<div class="row">
            	<div class="col-sm-2">
                <b>crash detail:</b></div>
                <div class="col-sm-4 ">
                <button type="button" id="auto-playback" style="width:30%"  class="btn  btn-flat  btn-success btn-sm">自动回放</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <button type="button" id="playback" style="width:35%" class="btn  btn-flat  btn-primary btn-sm"><i class="fa fa-fw fa-play"></i>半自动回放</button></div>
                </div>	
                
                <pre>${strongresult.crashDetail }</pre>
                </div>
            	</c:if>
            	
            </c:forEach>
             <%--  <div class="tab-pane" id="tab_1">
                <b>How to use:</b>

                <p>Exactly like the original bootstrap tabs except you should use
                  the custom wrapper <code>.nav-tabs-custom</code> to achieve this style.</p>                
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
                The European languages are members of the same family. 
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_3">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
              </div> --%>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
	</div>


	</section>


	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	$(function() {

		$("li:not(.paginate_button)").removeClass("active");
		$(".treeview-menu").css("display", "block");
		$("[href='/strong/testtask/list']").parent().addClass("active");

		$("#getRecords").click(function() {
			to_page(1);
		})
		/* 	$("#search_testtask").click(function() {
				$.ajax({
					url : "/strong/testtask/search",
					type : 'post',
					data : $("#search_form").serialize(),
					success : function(result) {

					}
				})
			}) */

		$("#auto-playback").click(function(){
			$(this).attr("disabled","disabled");
			$(this).val("正在回放");
			var resultId = $(".tab-pane.active").attr("detail-id");
			var schemeUrl = $("#scheme").attr("schemeval");
			$.ajax({
				url:"/strong/testresult/autoplayback",
				data:"resultId=" + resultId + "&schemeUrl=" + schemeUrl,
				type:"post",
				success:function(result){
					$("#auto-playback").removeAttr("disabled");
					if(result.code == 1){
						alert("回放成功");
					}else{
						alert(result.map.errorMsg);
					}
					
				}
			})	
		});
		
		
		$("#playback").click(function(){
			var playstatus = $(this).find("i").hasClass("fa-play");
			if(playstatus){
				var resultId = $(".tab-pane.active").attr("detail-id");
				var schemeUrl = $("#scheme").attr("schemeval");
				$.ajax({
					url:"/strong/testresult/playback",
					data:"resultId=" + resultId + "&schemeUrl=" + schemeUrl,
					type:"post",
					success:function(result){
						if(result.code == 1){
							$(".fa-play").addClass("fa-pause").removeClass("fa-play");
							
						}else{
							alert(result.map.errorMsg);
						}
						
					}
				})
			}else{
				
				$.ajax({
					url:"/strong/testresult/stopplayback",
					type:"get",
					success:function(result){
						if(result.code == 1){
							$(".fa-pause").addClass("fa-play").removeClass("fa-pause");
							
						}else{
							alert(result.map.errorMsg);
						}
						
					}
				})
			}
			
		});
		
		$("button.btn-danger").click(function() {
			delete_testtask(this);
		})

		$("[edit-id]").click(function() {
			var id = $(this).attr("edit-id");
			getScheme(id);
			$("#testtask_update_modal").modal({
				backdrop : "static"
			});
		});

		$("#testtask_add_modal_btn")
				.click(
						function() {
							getSchemes("#testtask_add_modal select[name='schemeId']");
							getWeightConfigs("#testtask_add_modal select[name='weightconfigId']");
							$("#testtask_add_modal").modal({
								backdrop : "static"
							});
						});

		$("#testtask_save_btn")
				.click(
						function() {

							$
									.ajax({
										url : "/strong/testtask/add",
										data : $("#testtask_add_modal form")
												.serialize(),
										type : 'post',
										success : function(result) {
											if (result.code == 1) {
												$("#testtask_add_modal").modal(
														'hide');
												history.go(0);
											} else {
												alert(result.map.errorMsg.testtaskUrl);
												if (undefined != result.map.errorMsg.testtaskUrl) {
													show_validate_msg(
															"#testtask_input",
															"error",
															result.map.errorMsg.testtaskUrl);
												}
											}
										}
									})
						});

	})
	function getSchemes(ele) {
		$.ajax({
			url : "/strong/scheme/getSchemes",
			type : 'get',
			success : function(result) {
				if (result.code == 1) {
					//{"code":1,"msg":"处理成功","map":{"schemes":[{"id":1,"businessLine":"机票",
					//"pageName":"订单详情","clientType":"Android","schemeUrl":"elong://flight?ordierid=28377347834"}]}}
					$.each(result.map.schemes, function() {
						var option = $("<option></option>").append(
								this.businessLine + " " + this.pageName).attr(
								"value", this.id);
						$(ele).append(option);
					})
				}
			}
		})
	}

	function getWeightConfigs(ele) {
		$.ajax({
			url : "/strong/weightconfig/getWeightConfigs",
			type : 'get',
			success : function(result) {
				if (result.code == 1) {
					//{"code":1,"msg":"处理成功","map":{"wjList":
					//[{"id":1,"weightJsonStr":"{\"changeType\":10,\"changeValue\":40,\"del\":20,\"emptyValue\":30}"}]}}
					$.each(result.map.wjList, function() {
						var option = $("<option></option>").append(
								this.weightJsonStr).attr("value", this.id);
						$(ele).append(option);
					})
				}
			}
		})
	}

	function show_validate_msg(ele, status, msg) {
		$(ele).parent().removeClass("has-success has-error");
		$(ele).next("span").text("");
		if ("success" == status) {
			$(ele).parent().addClass("has-success");
			$(ele).next("span").text(msg);
		} else if ("error" == status) {
			$(ele).parent().addClass("has-error");
			$(ele).next("span").text(msg);
		}
	}

	function getScheme(id) {
		$.ajax({
			url : "/strong/testtask/getSchemeById?id=" + id,
			type : 'get',
			success : function(result) {
				var testtaskdata = result.map.testtask;
				$("#businessLine_update_static")
						.text(testtaskdata.businessLine);
				$("#pageName_update_input").val(testtaskdata.pageName);
				$("#testtask_update_modal input[name=clientType]").val(
						[ testtaskdata.clientType ]);
				$("#testtask_update_static").val(testtaskdata.testtaskUrl);
			}
		})

	}

	function delete_testtask(object) {

		var id = $(object).parent().siblings().first().text();
		if (!confirm("确认要删除  " + $(object).parent().siblings().eq(4).text()
				+ " 吗？"))
			return false;
		$.ajax({
			url : "/strong/testtask/deleteById?id=" + id,
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

		$.each(result.map.pageInfo.navigatepageNums,
				function(index, page) {
					var numLi = $("<li></li>").addClass("paginate_button")
							.append(
									$("<a></a>").attr(
											"href",
											"/strong/testtask/list?page="
													+ page).append(page));
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
	

	$(function(){
		console.log('this sad',$('#carousel-example-generic').length)
		setTimeout( function(){
			$('#carousel-example-generic').carousel('pause');
		},100);
		kkk();
		//当轮播完成幻灯片过渡效果时触发该事件。
		$('#carousel-example-generic').on('slid.bs.carousel', function () {
		    // 执行一些动作...
			kkk();
		})
		
		
		
		$("li[data-id]").click(function(){
			var dataid = $(this).attr("data-id");
			
			var i = $("img[data-id='" + dataid + "']").attr("index");
			/* alert(i); */
			$('#carousel-example-generic').carousel(i-0);
		})
	})
	
	
	
	
	
	function kkk(){
		
		var reportid = $("div.item.active img").attr("data-id");
		$(".box-title:eq(1)").html(reportid);
		selectCrash(reportid);
	}
	
	function selectCrash(id){
		$("li[data-id]").removeClass("active");
		$("li[data-id='"+ id +"']").addClass("active");
		$("div.tab-pane").removeClass("active");
		$("div[detail-id='"+ id +"']").addClass("active");
	}
</script>
</html>