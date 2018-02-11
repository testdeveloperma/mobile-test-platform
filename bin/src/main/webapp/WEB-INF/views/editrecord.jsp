<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="box box-info">
	<div class="box-header with-border">
		<h3 class="box-title">Horizontal Form</h3>
	</div>
	<!-- /.box-header -->
	<!-- form start -->
	<form class="form-horizontal">
		<div class="box-body">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">id</label>

				<div class="col-sm-6">
					<input type="text" class="form-control" id="id"
						placeholder="Email" value=${record.id }>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">url</label>

				<div class="col-sm-6">
					<input type="text" class="form-control" id="url"
						placeholder="Email" value=${record.url }>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">method</label>

				<div class="col-sm-6">
					<input type="text" class="form-control" id="method"
						placeholder="Email" value=${record.method }>
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">请求参数</label>

				<div class="col-sm-6">
					<input type="text" class="form-control" id="reqparam"
						placeholder="Email" value=${record.requestParam }>
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">响应body</label>

				<div class="col-sm-6">
					<textarea class="form-control" id="respbody" rows="3" placeholder="Enter ..." value=${record.responseResult }>${record.responseResult }</textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">响应header</label>

				<div class="col-sm-6">
					<textarea class="form-control" id="respheader" rows="3" placeholder="Enter ..." value=${record.responseHeader }>${record.responseHeader }</textarea>
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">状态码</label>

				<div class="col-sm-6">
					<input type="text" class="form-control" id="respcode"
						placeholder="Email" value=${record.responseCode }>
				</div>
			</div>
			
			
		</div>
		<!-- /.box-body -->
		<div class="box-footer">
<!-- 			<button type="submit" class="btn btn-default">Cancel</button>
 -->			
 <button type="submit" id="submit" class="btn btn-info center-block">提交</button>
		</div>
		<!-- /.box-footer -->
	</form>
</div>
<script type="text/javascript">
	$(function() {
		$("#submit").click(function(){
			var idVal = $("#id").val();
			var urlVal = $("#url").val();
			var methodVal = $("#method").val();
			var reqparamVal = $("#reqparam").val();
			var respheaderVal = $("#respheader").val();
			var bodyVal = $("#respbody").val();
			var respcodeVal = $("#respcode").val();
			alert("id: " + idVal + ",body:" + bodyVal);
			var data;
			$.ajax({
				url:url,
				data:data,
				type:"PUT",
				success:function(){
					
				}
			})
		})
	})
</script>