var i=0;
function attention(attUserId)
    {
    	if(i==0)
    		{
	    		$.ajax({
	        		type : 'post',
	        		url : 'userAttention',
	        		data : {'attUserId':attUserId}, 
	        		dataType : 'json',
	        		success : function(data) {
	        			if(data.msg=="true")
	        			{
	        				i=1;
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
    	else
    		{
    			delattention(attUserId);
    		}
    	
    }

function delattention(uid)
{
	$.ajax({
		type : 'post',
		url : 'delUserAttention',
		data : {'attUserId':uid}, 
		dataType : 'json',
		success : function(data) {
			if(data.msg=="true")
			{
				i=0;
				$("#att-btn span").html("关注");
				$("#att-btn").css("background-color","#5cb85c");
				$("#att-btn").css("color","white");
				$("#att-btn i").attr("class","fa fa-plus")
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