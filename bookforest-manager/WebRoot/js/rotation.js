function initTable(){
	  $("#functable").bootstrapTable({
		 dataType: "json",
		 striped: true,
         cache: false,
		 showColumns:true,
		 pageList: [5, 10, 35],
		 sidePagination: "client"
		})
}

function formatOperator()
{
	return "<a class='btn btn btn-warning info-a' href='javascript:void(0)'><i class='fa fa-eye'></i>详情</a> "
				+"<a class='btn btn btn-info alert-a' href='javascript:void(0)'><i class='fa fa-pencil'></i>修改</a>"
				+"<a class='btn btn btn-danger del-a' href='javascript:void(0)'><i class='fa fa-close'></i>删除</a>";
}

function add()
{
	$('#addForm')[0].reset();
	
	$("#addModal").modal('show');
}
function showDel()
{
	$("#delModal").modal('show');
}
function del()
{
	var keys=getKeySelections();
	$.ajax({
		 type: "POST",
		 dataType : 'json',
		 url: "delRotationBatch",
		 data:{"imgIds":keys},
		 success: function(data){	
				  $("#delModal").modal('hide');
				  $('#rotationTable').bootstrapTable('refresh', {
						url : "rotationAllJson"
					});
		 },
		 error : function(xhr, type) {
				alert('删除失败！');
			}
	 });
}
function delSingle(imgId)
{
	console.log(imgId);
	$.ajax({
		 type: "POST",
		 dataType : 'json',
		 url: "delRotationBatch",
		 data:{"imgIds":imgId},
		 success: function(data){	
				  $("#delSingleModal").modal('hide');
				  $('#rotationTable').bootstrapTable('refresh', {
						url : "rotationAllJson"
					});
		 },
		 error : function(xhr, type) {
				alert('删除失败！');
			}
	 });
}

function getKeySelections() {
	var $rotationTable=$('#rotationTable');
	var selects = $rotationTable.bootstrapTable('getSelections');
	
	 var imgIds = $.map(selects, function (row) {
         return row.imgId;
     });
	 var strImgId="";
	 $.each(imgIds,function(index,value){
		 strImgId=strImgId+"|"+value;
	 });
	 
	 return strImgId;
}

function save()
{
	$.ajax({
		type : 'post',
		url : 'addRotation',
		data : $('#addForm').serialize(),
		dataType : 'json',
		success : function(data) {
			if(data.data=="true")
			{
				$("#addModal").modal('hide');
				$('#rotationTable').bootstrapTable('refresh', {
					url : "rotationAllJson"
				});
				$('#addForm')[0].reset();
				$('.file-preview-thumbnails').html('');
				
			}
			else
				{
				$("#addModal").modal('hide');
				}
			
		},
		error : function(data) {
			$("#addModal").modal('hide');
		}
	});
}


