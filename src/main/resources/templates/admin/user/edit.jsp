<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户列表</title>
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link href="../media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="../media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
		<link href="../media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<link href="../media/css/style-metro.css" rel="stylesheet" type="text/css" />
		<link href="../media/css/style.css" rel="stylesheet" type="text/css" />
		<link href="../media/css/style-responsive.css" rel="stylesheet" type="text/css" />
		<link href="../media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
		<link href="../media/css/uniform.default.css" rel="stylesheet" type="text/css" />
		<link rel="shortcut icon" href="media/image/favicon.ico" />
	</head>

	<body>
		<div class="container-fluid">
			<div class="row-fluid">
				<h3 class="page-title"><i class="fa fa-user-circle"></i>用户管理</h3>
				<ul class="breadcrumb">
					<li>
						<a href="list.html"><i class="fa fa-home"></i>用户管理</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="#">编辑用户</a>
					</li>
				</ul>
			</div>
			<div class="row-fluid">
				<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-reorder"></i>
							编辑用户信息
						</div>
					</div>
					<div class="portlet-body">
						<form class="form-horizontal" >
							<div class="control-group">
								<label class="control-label">用户ID：</label>
								<div class="controls">
									<input name="uid" value="${user.uid }" readonly type="text" class="m-wrap media" />
									<span class="help-inline"></span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">用户名称：</label>
								<div class="controls">
									<input name="username" value="${user.username }" type="text" class="m-wrap media" />
									<span class="help-inline">username</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">真实姓名：</label>
								<div class="controls">
									<input name="name" value="${user.name }" type="text" class="m-wrap media" />
									<span class="help-inline">name</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">电话号码：</label>
								<div class="controls">
									<input name="phone" value="${user.phone }" type="text" class="m-wrap media" />
									<span class="help-inline">phone</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">密码：</label>
								<div class="controls">
									<input name="password" value="${user.password }" type="text" class="m-wrap media" />
									<span class="help-inline">password</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">邮箱：</label>
								<div class="controls">
									<input name="email" value="${user.email }" type="text" class="m-wrap media" />
									<span class="help-inline">email</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">地址：</label>
								<div class="controls">
									<textarea name="addr" class="large m-wrap" rows="3">${user.addr }</textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="button" onclick="update()" class="btn blue"><i class="fa fa-check"></i>确定</button>&emsp;
								<button type="reset" class="btn green"><i class="fa fa-mail-reply"></i>重置</button>&emsp;
								<button type="button" id="back" class="btn"><i class="fa fa-times"></i>返回</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

		<script src="../media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="../media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
		<script src="../media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
		<script src="../media/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="../media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
		<script src="../media/js/jquery.blockui.min.js" type="text/javascript"></script>
		<script src="../media/js/jquery.cookie.min.js" type="text/javascript"></script>
		<script src="../media/js/jquery.uniform.min.js" type="text/javascript"></script>
		<script src="../media/js/app.js" type="text/javascript"></script>
		
		<script type="text/javascript">
			$(function(){
				$("#back").click(function(){
					history.back();
				});
			});
			
			function update(){
				if(!confirm("确定更新改用户信息？")){
					return;
				}
				
				$.ajax({
	                cache: true,
	                type: "POST",
	                url:"update.do",
	                data:$('.form-horizontal').serialize(),// 你的formid
	                async: false,
	                error: function(request) {
	                    alert("Connection error");
	                },
	                success: function(result) {
	                    if(result.state==0){
	                    	alert("修改成功！");
	                    }else{
	                    	alert(result.message);
	                    }
	                }
	            });
			}
		</script>
	</body>

</html>
