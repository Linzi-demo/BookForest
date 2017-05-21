<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">-->
    <title>书林|为极简的写作阅读体验</title>

    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="plugins/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-lunbo.css" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>


    <![endif]-->
    <!--编辑器-->
    <link href="css/editormd.css" rel="stylesheet">
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />

</head>
<body>
<!--头部-->
<div class="container-fluid">
<form id="articleForm" action="addArticle" method="post" >
    <div class="row">
        <div class="col-lg-12">
            <input type="text" name="articleTitle" placeholder="请输入文章标题..." style="border: 0px;font-size: 33px;font-weight: 600;outline: none;width: 100%;padding: 5px 0 5px 0">
            <input type="hidden" id="articleText" name="articleText">
        </div>
    </div>
    <div class="row">
        <div id="layout">
            <div id="test-editormd">
                
               <!--  <textarea class="editormd-html-textarea" name="articleContent"> -->
                
                <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc" id="editormd"></textarea>
			    
			    <textarea class="editormd-html-textarea" name="editorhtml" id="editorhtml"></textarea> 
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-1">
            <a href="" class="btn btn-success back-a"> <i class="fa fa-chevron-left"></i> 返回书林</a>
        </div>
        <div class="col-sm-3">
             <div class="form-group">
			    <label class="sr-only" for="bookmarks">书签</label>
			    <input type="text" name="bookmarks" class="form-control" id="bookmarks" placeholder="书签：你可以使用 ' | ' 分隔对个书签">
			  </div>
        </div>

        <div class="col-sm-1 col-sm-offset-1 text-right">
            <span style="color:#b7b7b7;font-weight: 600;font-size: 20px; vertical-align: middle">
                100 字数
            </span>
        </div>
        <div class="col-sm-1 col-sm-offset-4 text-right">
        	<div class="checkbox">
		        <label>
		          <input type="checkbox" name="type">  私密
		        </label>
      		</div>
        </div>
        <div class="col-sm-1 text-right">
            <div class="dropup" >
                <button onclick="sub()" class="btn btn-success " type="button" id="dropdownMenu2" >
                    <i class="fa fa-save" style="margin-right: 5px"></i>保存
                    
                </button>
                
            </div>


        </div>
    </div>
</form>
</div>
<!--头部结束-->


<script src="js/jquery.min.js"></script>
<script src="js/editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;

    $(function() {
        testEditor = editormd("test-editormd", {
            width   : "100%",
            height  : 640,
            syncScrolling : "single",
            path    : "lib/",
            saveHTMLToTextarea : true,
            searchReplace : true,
            htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "uploadArticleImg",
            onload : function() {
                console.log('onload', this);
                
                //this.fullscreen();
                //this.unwatch();
                //this.watch().fullscreen();

                //this.setMarkdown("#PHP");
                //this.width("100%");
                //this.height(480);
                //this.resize("100%", 640);
            }

        });

        /*
         // or
         testEditor = editormd({
         id      : "test-editormd",
         width   : "90%",
         height  : 640,
         path    : "../lib/"
         });
         */
    });
    
    function sub()
    {
    	var htl=$('#editorhtml').val();
		var dd=htl.replace(/<\/?.+?>/g,"");
		var dds=dd.replace(/ /g,"");//dds为得到后的内容
		$('#articleText').val(dds);
		$('#articleForm').submit();
    }
</script>

</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.1.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		 
		/*  $('#articleForm').onsubmit(function(){
			  var htl=$('#editorhtml').val();
			  var dd=htl.replace(/<\/?.+?>/g,"");
				 var dds=dd.replace(/ /g,"");//dds为得到后的内容
				 alert(dds);
				 return true;
		 }); */
	})
</script>
</html>