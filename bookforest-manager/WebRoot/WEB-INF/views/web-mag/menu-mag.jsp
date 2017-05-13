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
					<h1 class="title">菜单管理</h1>
				</div>

				<div class="breadcrumb-env">

					<ol class="breadcrumb bc-1">
						<li>
							<a href="dashboard-1.html"><i class="fa-home"></i>主页</a>
						</li>
						<li class="active">

							<strong>菜单管理</strong>
						</li>
					</ol>

				</div>

			</div>

			<!-- 网站主体开始 -->
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-tabs nav-tabs-justified">
						<li class="active">
							<a href="#home-3" data-toggle="tab"> <span
									class="visible-xs"><i class="fa-home"></i></span> <span
									class="hidden-xs">菜单维护</span>
							</a>
						</li>
						<li>
							<a href="#profile-3" data-toggle="tab"> <span
									class="visible-xs"><i class="fa-user"></i></span> <span
									class="hidden-xs">菜单图标管理</span>
							</a>
						</li>
					</ul>

					<div class="tab-content">
						<div class="tab-pane active" id="home-3">
							<div>
							</div>
						</div>
						<div class="tab-pane" id="profile-3">
						</div>
					</div>
				</div>
			</div>
			<!--网站主体结束-->
			<jsp:include page="/footer"></jsp:include>
		</div>
	</div>

	<jsp:include page="/buttom"></jsp:include>

</body>
</html>