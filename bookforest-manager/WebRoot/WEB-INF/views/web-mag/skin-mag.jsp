<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<jsp:include page="/head"/>
</head>
<body class="page-body">
	
	<div class="page-container">
			
		<!--左侧菜单  -->
		<jsp:include page="/left"/>
		<!-- 左侧菜单结束 -->
		
		<div class="main-content">
			<!--头部  -->
			<jsp:include page="/top"></jsp:include>	
			<!--网站主体-->
			<div class="page-title">

				<div class="title-env">
					<h1 class="title">皮肤管理</h1>
				</div>

				<div class="breadcrumb-env">

					<ol class="breadcrumb bc-1">
						<li>
							<a href="index"><i class="fa-home"></i>主页</a>
						</li>
						<li class="active">

							<strong>皮肤管理</strong>
						</li>
					</ol>

				</div>

			</div>

			<!-- 网站主体开始 -->
			
			<!--网站主体结束-->
			<jsp:include page="/footer"></jsp:include>
		</div>
	</div>

	<jsp:include page="/buttom"></jsp:include>

</body>
</html>