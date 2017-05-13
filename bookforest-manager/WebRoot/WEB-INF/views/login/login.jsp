<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
	<title>书林 - 后台登录</title>
	<jsp:include page="/head"/>
</head>
<body class="page-body login-page">
	
	<div class="login-container">
	
		<div class="row">
		
			<div class="col-sm-6">
			
				<form action="doLogin" method="post" role="form" id="login" class="login-form fade-in-effect">
					<div class="login-header">
						<h2>书林管理系统 - 登录</h2>
					</div>
					
					<div class="form-group">
						<label class="control-label" for="username">用户名</label>
						<input type="text" class="form-control input-dark" name="username" id="username" autocomplete="off" />
					</div>
					
					<div class="form-group">
						<label class="control-label" for="passwd">密码</label>
						<input type="password" class="form-control input-dark" name="passwd" id="passwd" autocomplete="off" />
					</div>
					
					<div class="form-group">
						<button type="submit"  id="submitBtn" class="btn btn-dark  btn-block text-left">
							<i class="fa-lock"></i>
							登录
						</button>
					</div>
					
					<div class="login-footer">
						<a href="#">忘记密码？</a>
					</div>
					
				</form>
			</div>
			
		</div>
		
	</div>
	
<!--  -->
<jsp:include page="/buttom"></jsp:include>
<script src='js/login.js'></script>
<script src='assets/js/jquery-validate/jquery.validate.min.js'></script>
<script src='assets/js/toastr/toastr.min.js'></script>

</body>
</html>