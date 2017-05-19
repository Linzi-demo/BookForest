<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<jsp:include page="/head"/>
	<link rel="stylesheet" href="plugins/bootstrap-fileinput/css/fileinput.min.css">
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
					<h1 class="title">${pageName }</h1>
				</div>
				<div class="breadcrumb-env">
					<ol class="breadcrumb bc-1">
						<li>
							<a href="index"><i class="fa-home"></i>主页</a>
						</li>
						<li class="active">
							<strong>${pageName }</strong>
						</li>
					</ol>
				</div>

			</div>

			<!-- 网站主体开始 -->
			<div class="row">
				<div id="toolbar">
					<button onclick="add()" data-toggle="modal" class="btn btn-defualt btn-success">
							<i class="fa fa-plus"></i>
							添加
					</button>
					<button onclick="showDel()"  class="btn btn-defualt btn-danger" data-toggle="modal"  >
							<i class="fa fa-close"></i>
							删除
					</button>
				</div>
				<div class="col-xs-12">
					<table data-toggle="table"  id="plateTable" data-toolbar="#toolbar" data-url="plateAllJson" ata-pagination="true">
					</table>
				</div>
			</div>
			
			<!--网站主体结束-->
			<jsp:include page="/footer"></jsp:include>
		</div>
	</div>

<!-- 弹出层 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" data-backdrop="static">
		<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
						<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
								<h4 class="modal-title" id="editModalLabel">板块配置</h4>
						</div>
						<div class="modal-body">
								<form id="addForm" class="form-horizontal" enctype="multipart/form-data">
										<div class="form-group">
											<label class="col-sm-2 control-label col-sm-offset-1"  for="plateName">板块名</label>
											<div class="col-sm-6">
												<input type="text" name="plateName" class="form-control" id="plateName" placeholder="Plate Name">
											</div>
										</div>
										<div class="form-group-separator"></div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label col-sm-offset-1"  for="plateInfo">板块简介</label>
											<div class="col-sm-6">
												<input type="text" name="plateInfo" class="form-control" id="plateInfo" placeholder="Plate Infomation">
											</div>
										</div>
										<div class="form-group-separator"></div>
										
										<div class="form-group">
											<label class="col-sm-2 control-label col-sm-offset-1"  for="platePost">板块公告</label>
											<div class="col-sm-6">
												<!-- <textarea name="platePost" class="form-control" id="platePost" placeholder="Plate Post"> -->
												<input type="text" name="platePost" class="form-control" id="platePost" placeholder="Plate Post">
											</div>
										</div>
								
										<div class="form-group-separator"></div>
								
										<div class="form-group">
											<label class="col-sm-2  col-sm-offset-1 control-label" for="imgFile">图片上传</label>
											
											<div class="col-sm-6">
												<input type="file" class="form-control imgFile"  id="imgFile" name="imgFile"  data-ref="url">
												<p class="help-block">支持jpg、jpeg、png格式</p>
												<input type="hidden"  name="url">
											</div>
										</div>
								
										<div class="form-group-separator"></div>
								
										<div class="form-group">
											<label class="col-sm-2 col-sm-offset-1 control-label" for="stateSelect">是否激活</label>
											<div class="col-sm-6">
												<select class="form-control" id="stateSelect">
													  <option value="0" selected="selected">未激活</option>
													  <option value="1">激活</option>
													  <option value="2">激活首页</option>
												</select>
												<input class="plateState" type="hidden" name="plateState" value="0">
											</div>
										</div>
								</form>
						</div>
						<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">
										<i class="glyphicon glyphicon-remove"></i> 取消
									</button>
									<button id="save" class="btn btn-success" onclick="save()">
										<i class="glyphicon glyphicon-ok"></i> 保存
									</button>
						</div>
				</div>
		</div>
</div>
<!--删除弹层  -->
	<div class="modal fade" id="delModal" tabindex="-1" role="dialog"
		aria-labelledby="delModalLabel" data-backdrop="static">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="delModalLabel">删除确认</h4>
				</div>
				<div class="modal-body">确定需要删除该记录？</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<i class="glyphicon glyphicon-remove"></i> 取消
					</button>
					<button type="button" class="btn btn-primary" onclick="del()">
						<i class="glyphicon glyphicon-minus"></i> 删除
					</button>
				</div>
			</div>
		</div>
	</div>
	   <div class="modal fade" id="delSingleModal" tabindex="-1" role="dialog" aria-labelledby="delModalLabel" data-backdrop="static">
		        <div class="modal-dialog" role="document">
		          <div class="modal-content">
		            <div class="modal-header">
		              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		              <h4 class="modal-title " id="delModalLabel">删除确认</h4>
		            </div>
		            <div class="modal-body">确定需要删除该记录？</div>
		            <div class="modal-footer">
		              <button type="button" class="btn btn-default" data-dismiss="modal">
		                <i class="glyphicon glyphicon-remove"></i> 取消
		              </button>
		              <button type="button" class="btn btn-danger"  onclick="delSingle(plateId)">
		                <i class="glyphicon glyphicon-minus"></i> 删除
		              </button>
		            </div>
		          </div>
		        </div>
		      </div>
		   
<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" data-backdrop="static">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<!-- <span aria-hidden="true">&times;</span> -->
									</button>
									<h4 class="modal-title" id="editModalLabel">板块图预览</h4>
								</div>
								<div class="modal-body">
										<div class="row text-center" >
											<!-- 需要修改 -->
											<div class="col-sm-12" id="plateInfoDiv">
												
											</div>
										</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">
										<i class="glyphicon glyphicon-remove"></i> 取消
									</button>
									
								</div>
							</div>
						</div>
					</div>
	<!-- 弹出层结束 -->

	<jsp:include page="/buttom"></jsp:include>
</body>
<script type="text/javascript" src="js/plate.js"></script>
<script type="text/javascript" src="plugins/bootstrap-fileinput/js/fileinput.min.js"></script>
<script type="text/javascript"  src="plugins/bootstrap-fileinput/js/locales/zh.js"></script>
<script type="text/javascript">
initTable();

$(".imgFile").fileinput({
    //上传的地址
    uploadUrl:"uploadFile",
    uploadAsync : true, //默认异步上传
    showUpload : false, //是否显示上传按钮,跟随文本框的那个
    showRemove : false, //显示移除按钮,跟随文本框的那个
    showCaption : true,//是否显示标题,就是那个文本框
    showPreview : true, //是否显示预览,不写默认为true
    dropZoneEnabled : false,//是否显示拖拽区域，默认不写为true，但是会占用很大区域
    //minImageWidth: 50, //图片的最小宽度
    //minImageHeight: 50,//图片的最小高度
    //maxImageWidth: 1000,//图片的最大宽度
    //maxImageHeight: 1000,//图片的最大高度
    //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
    //minFileCount: 0,
    maxFileCount : 1, //表示允许同时上传的最大文件个数
    enctype : 'multipart/form-data',
    validateInitialCount : true,
    previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",
    msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
    allowedFileTypes : [ 'image' ],//配置允许文件上传的类型
    allowedPreviewTypes : [ 'image' ],//配置所有的被预览文件类型
    allowedPreviewMimeTypes : [ 'jpg', 'png', 'gif' ],//控制被预览的所有mime类型
    language : 'zh'
})
//异步上传返回结果处理
$('.imgFile').on('fileerror', function(event, data, msg) {
    console.log("fileerror");
    console.log(data);
});
//异步上传返回结果处理
$(".imgFile").on("fileuploaded", function(event, data, previewId, index) {
    console.log("fileuploaded");
    var ref = $(this).attr("data-ref");
    $("input[name='" + ref + "']").val(data.response.url);

});

//同步上传错误处理
$('.imgFile').on('filebatchuploaderror', function(event, data, msg) {
    console.log("filebatchuploaderror");
    console.log(data);
});

//同步上传返回结果处理
$(".imgFile").on("filebatchuploadsuccess",
        function(event, data, previewId, index) {
            console.log("filebatchuploadsuccess");
            console.log(data);
        });

//上传前
$('.imgFile').on('filepreupload', function(event, data, previewId, index) {
    console.log("filepreupload");
});

$(function(){
	$("#addForm").submit(function(){
		return false;
	});
	
});
</script>
</html>