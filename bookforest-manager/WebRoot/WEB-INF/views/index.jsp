<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<jsp:include page="/head"/>
</head>
<body class="page-body" style="background-color: #eeeeee">
	
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
					<h1 class="title">网站流量</h1>
				</div>

				<div class="breadcrumb-env">

					<ol class="breadcrumb bc-1">
						<li>
							<a href="dashboard-1.html"><i class="fa-home"></i>主页</a>
						</li>
						<li class="active">

							<strong>网站流量</strong>
						</li>
					</ol>

				</div>

			</div>


			<div class="row">
				<div class="col-sm-3">

					<div class="xe-widget xe-counter" data-count=".num" data-from="0" data-to="1999" data-duration="2">
						<div class="xe-icon">
							<i class="linecons-eye"></i>
						</div>
						<div class="xe-label">
							<strong class="num">1k</strong>
							<span>浏览总量</span>
						</div>
					</div>

				</div>
				<div class="col-sm-3">

					<div class="xe-widget xe-counter xe-counter-blue" data-count=".num" data-from="1" data-to="117" data-suffix="k" data-duration="3" data-easing="false">
						<div class="xe-icon">
							<i class="linecons-user"></i>
						</div>
						<div class="xe-label">
							<strong class="num">1k</strong>
							<span>用户总量</span>
						</div>
					</div>

				</div>
				<div class="col-sm-3">

					<div class="xe-widget xe-counter xe-counter-info" data-count=".num" data-from="1000" data-to="2470" data-duration="4" data-easing="true">
						<div class="xe-icon">
							<i class="linecons-note"></i>
						</div>
						<div class="xe-label">
							<strong class="num">1000</strong>
							<span>文章总数</span>
						</div>
					</div>

				</div>
				<div class="col-sm-3">

					<div class="xe-widget xe-counter xe-counter-red" data-count=".num" data-from="0" data-to="577"  data-suffix="k" data-duration="5" data-easing="true" data-delay="1">
						<div class="xe-icon">
							<i class="linecons-comment"></i>
						</div>
						<div class="xe-label">
							<strong class="num">1k</strong>
							<span>评论总数</span>
						</div>
					</div>

				</div>
			</div>

			<div class="row">
				<div class="col-sm-3">

					<div class="xe-widget xe-counter-block" data-count=".num" data-from="0" data-to="998" data-duration="2">
						<div class="xe-upper">

							<div class="xe-icon">
								<i class="linecons-eye"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0.0%</strong>
								<span>日浏览量</span>
							</div>

						</div>
						<div class="xe-lower">
							<div class="border"></div>

							<span>增长比</span>
							<strong>78% 增长量</strong>
						</div>
					</div>

				</div>
				<div class="col-sm-3">

					<div class="xe-widget xe-counter-block xe-counter-block-blue" data-count=".num" data-from="0" data-to="512" data-duration="3">
						<div class="xe-upper">

							<div class="xe-icon">
								<i class="linecons-user"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0</strong>
								<span>日增长用户</span>
							</div>

						</div>
						<div class="xe-lower">
							<div class="border"></div>

							<span>增长比</span>
							<strong>69% 增长量</strong>
						</div>
					</div>

				</div>
				<div class="col-sm-3">

					<div class="xe-widget xe-counter-block xe-counter-block-info" data-suffix="k" data-count=".num" data-from="0" data-to="310" data-duration="4" data-easing="false">
						<div class="xe-upper">

							<div class="xe-icon">
								<i class="linecons-note"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0k</strong>
								<span>日发布文章数</span>
							</div>

						</div>
						<div class="xe-lower">
							<div class="border"></div>

							<span>同比增长</span>
							<strong>51.55% 增长量</strong>
						</div>
					</div>

				</div>
				<div class="col-sm-3">

					<div class="xe-widget xe-counter-block xe-counter-block-red" data-suffix="k" data-count=".num" data-from="0" data-to="310" data-duration="4" data-easing="false">
						<div class="xe-upper">

							<div class="xe-icon">
								<i class="linecons-comment"></i>
							</div>
							<div class="xe-label">
								<strong class="num">0</strong>
								<span>日评论数</span>
							</div>

						</div>
						<div class="xe-lower">
							<div class="border"></div>

							<span>同比增长</span>
							<strong>51.55% 增长量</strong>
						</div>
					</div>

				</div>
			</div>


			<!-- Xenon Progress Counter Widget -->
			<div class="row">
				<div class="col-sm-6">

					<div class="xe-widget xe-progress-counter xe-progress-counter-pink" data-count=".num" data-from="0" data-to="12425" data-duration="2">

						<div class="xe-background">
							<i class="linecons-photo"></i>
						</div>

						<div class="xe-upper">
							<div class="xe-icon">
								<i class="linecons-photo"></i>
							</div>
							<div class="xe-label">
								<span>图片</span>
								<strong class="num">0</strong>
							</div>
						</div>

						<div class="xe-progress">
							<span class="xe-progress-fill" data-fill-from="0" data-fill-to="56" data-fill-unit="%" data-fill-property="width" data-fill-duration="2" data-fill-easing="true"></span>
						</div>

						<div class="xe-lower">
							<span>日增长率</span>
							<strong>41%</strong>
						</div>

					</div>

				</div>
				<div class="col-sm-6">

					<div class="xe-widget xe-progress-counter xe-progress-counter-turquoise" data-count=".num" data-from="0" data-to="520" data-suffix="￥" data-duration="3">

						<div class="xe-background">
							<i class="linecons-money"></i>
						</div>

						<div class="xe-upper">
							<div class="xe-icon">
								<i class="linecons-money"></i>
							</div>
							<div class="xe-label">
								<span>交易额</span>
								<strong class="num">0</strong>
							</div>
						</div>

						<div class="xe-progress">
							<span class="xe-progress-fill" data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
						</div>

						<div class="xe-lower">
							<span>日增长率</span>
							<strong>82%</strong>
						</div>

					</div>

				</div>


			</div>


			<!-- Xenon Verical Counter -->
			<!-- <div class="row">

			</div> -->



			<!--网站主体结束-->
			<jsp:include page="/footer"></jsp:include>
		</div>
	</div>
	
	
	<!-- <div class="page-loading-overlay">
		<div class="loader-2"></div>
	</div> -->
	



	<jsp:include page="/buttom"></jsp:include>

</body>
</html>