 function tougao()
    {
    	$.ajax({
    		type : 'post',
    		url : 'checkLogin',
    		/* data : $('#addForm').serialize(), */
    		dataType : 'json',
    		success : function(data) {
    			if(data.msg=="true")
    			{
    				$('.article-modal-list li').remove();
    				$('.article-modal-list').append(data.userArticles);
    				$("#addModal").modal('show');
    				
    			}
    			else
    			{
    				location.href ="login";
    			}
    			
    		},
    		error : function(data) {
    			
    			$("#addModal").modal('hide');
    		}
    	});
    }
    
    function sub(articleId)
    {
    	var plateId=$("#plateId").val();
    	$.ajax({
    		type : 'post',
    		url : 'contribute',
    		data : {'plateId':plateId,'articleId':articleId}, 
    		dataType : 'json',
    		success : function(data) {
    			if(data.msg=="true")
    			{
    				$("#"+articleId).html("已投");
    				$("#"+articleId).css("background-color","white");
    				$("#"+articleId).css("color","#2DA76E");
    				$("#"+articleId).css("boder","1px solid #2DA76E");
    			}
    			else if(data.msg=="exist")
    				{
    					$("#"+articleId).tooltip({
    						title:'已投'
    					});
    					$("#"+articleId).tooltip('show');
    				}
    			else
    			{
    				alert("投稿失败！");
    			}
    			
    		},
    		error : function(xhr, type) {
    			
    			alert("投稿失败！");
    		}
    	});
    }
    
    function attention()
    {
    	var plateId=$("#plateId").val();
    	$.ajax({
    		type : 'post',
    		url : 'attention',
    		data : {'plateId':plateId}, 
    		dataType : 'json',
    		success : function(data) {
    			if(data.msg=="true")
    			{
    				$("#att-btn span").html("已关注");
    				$("#att-btn").css("background-color","white");
    				$("#att-btn").css("color","#2DA76E");
    				$("#att-btn i").attr("class","fa fa-check")
    			}
    			else if(data.msg="nologin")
    				{
    				location.href ="login";
    				}
    			else 
    			{
    				alert("关注失败！");
    			}
    		},
    		error : function(xhr, type) {
    			alert("关注失败！");
    		}
    	});
    }
    
    function delattention()
    {
    	var plateId=$("#plateId").val();
    	$.ajax({
    		type : 'post',
    		url : 'delArtAttention',
    		data : {'plateId':plateId}, 
    		dataType : 'json',
    		success : function(data) {
    			if(data.msg=="true")
    			{
    				$("#att-btn span").html("关注");
    				$("#att-btn").css("background-color","#5cb85c");
    				$("#att-btn").css("color","white");
    				$("#att-btn i").attr("class","fa fa-plus");
    			}
    			else if(data.msg="nologin")
    				{
    				location.href ="login";
    				}
    			else 
    			{
    				alert("关注失败！");
    			}
    		},
    		error : function(xhr, type) {
    			alert("关注失败！");
    		}
    	});
    }