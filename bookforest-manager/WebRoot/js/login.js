jQuery(document).ready(function($)
					{
						setTimeout(function(){ $(".fade-in-effect").addClass('in'); }, 1);

						$("form#login").validate({
							rules: {
								username: {
									required: true
								},
								passwd: {
									required: true
								}
							},
							messages: {
								username: {
									required: '请输入用户名！'
								},
								passwd: {
									required: '请输入密码！'
								}
							}
						});
						$("form#login .form-group:has(.form-control):first .form-control").focus();
						
						
					});

function submitForm()
{
	$.ajax({
		dataType:'html',
		type:'post',
		url:'loginDo.htm',
		data : $('#login').serialize(),
		success:function(data){
			
		}
	});
}