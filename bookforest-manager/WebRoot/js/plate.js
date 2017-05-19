function initTable(){
	  $('#plateTable').bootstrapTable({
		 /*height:486,*/
		 dataType: "json",
		 striped: true,
         cache: false, 
		 pagination: true,
		 singleSelect: false,
		 showRefresh:true,
		 showColumns:true,
		 search: true,
		 pageList: [3, 5, 10, 100],
		 sidePagination: "client",
         columns: [
               { field: 'state', checkbox: true, align: 'center', valign: 'middle' },
               { title: '板块ID',  field: 'plateId', align: 'center', valign: 'middle'},  
               { title: '板块名称',  field: 'plateName', align: 'center', valign: 'middle'},  
               { title: '图标', width:'200px',  field: 'plateImg',   align: 'center', valign: 'middle'}, 
               { title: '文章数',  field: 'articleNum', align: 'center', valign: 'middle'},  
               { title: '关注数',  field: 'plateFollow', align: 'center', valign: 'middle'},  
               { title: '状态',  field: 'plateState', align: 'center', valign: 'middle'},  
               { title: '操作人',  field: 'operatorId', align: 'center', valign: 'middle'},  
               { title: '操作时间',  field: 'operatorTime', align: 'center', valign: 'middle'},  
              
               { title: '操作', width:'250px' ,field: 'operate', align: 'center',valign: 'middle', events: 'operateEvents', formatter: 'operateFormatter'}
			]
		});
} 

function add()
{
	$('#addForm')[0].reset();
	
	$("#addModal").modal('show');
}

function save()
{
	var plateState=$('#stateSelect option:selected') .val();
	$(".plateState").val(plateState);
	$.ajax({
		type : 'post',
		url : 'addPlate',
		data : $('#addForm').serialize(),
		dataType : 'json',
		success : function(data) {
			if(data.data=="true")
			{
				$("#addModal").modal('hide');
				$('#plateTable').bootstrapTable('refresh', {
					url : "plateAllJson"
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


function showDel()
{
	$("#delModal").modal('show');
}
function getKeySelections() {
	var $plateTable=$('#plateTable');
	var selects = $plateTable.bootstrapTable('getSelections');
	
	 var plateIds = $.map(selects, function (row) {
         return row.plateId;
     });
	 var strPlateId="";
	 $.each(plateIds,function(index,value){
		 strPlateId=strPlateId+"|"+value;
	 });
	 
	 return strPlateId;
}
function del()
{
	var keys=getKeySelections();
	$.ajax({
		 type: "POST",
		 dataType : 'json',
		 url: "delPlateBatch",
		 data:{"plateIds":keys},
		 success: function(data){	
				  $("#delModal").modal('hide');
				  $('#plateTable').bootstrapTable('refresh', {
						url : "plateAllJson"
					});
		 },
		 error : function(xhr, type) {
				alert('删除失败！');
			}
	 });
}

function operateFormatter()
{
	return ["<a class='btn btn btn-warning info-a' href='javascript:void(0)'><i class='fa fa-eye'></i>详情</a> "
					,"<a class='btn btn btn-info alert-a' href='javascript:void(0)'><i class='fa fa-pencil'></i>修改</a>"
					,"<a class='btn btn btn-danger del-a' href='javascript:void(0)'><i class='fa fa-close'></i>删除</a>"
					].join('');
}

var plateId='';
window.operateEvents = {
	    'click .info-a': function (e, value, row) {
	        var plateImg=row.plateImg;
	        if(plateImg!=null)
	        	{
	        		$("#plateInfoDiv").html("<img src="+plateImg+" style='display: block; width: 100%; height:auto' > ");
	        		$("#infoModal").modal('show');
	        	}
	    },
	    'click .alert-a': function (e, value, row) {
	        alert('You click remove action, row: ' + JSON.stringify(row));
	    },
	    'click .del-a': function (e, value, row) {
	    	plateId="|"+row.plateId;
	        $("#delSingleModal").modal('show');
	    }
	}; 


function delSingle(plateId)
{
	console.log(plateId);
	$.ajax({
		 type: "POST",
		 dataType : 'json',
		 url: "delPlateBatch",
		 data:{"plateIds":plateId},
		 success: function(data){	
				  $("#delSingleModal").modal('hide');
				  $('#plateTable').bootstrapTable('refresh', {
						url : "plateAllJson"
					});
		 },
		 error : function(xhr, type) {
				alert('删除失败！');
			}
	 });
}