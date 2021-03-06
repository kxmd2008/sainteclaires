var msg = {};
$(document).ready(function() {
	var locale = $("#locale").val();
	if(locale == 'zh_CN'){
		$.getJSON("../js/admin/zh_CN.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
			addTableInfo(msg);
		});
	}else{
		$.getJSON("../js/admin/en_US.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
			addTableInfo(msg);
		});
	}
} );
var fvTable ;
function addTableInfo(msg){
	//为了避免多次初始化datatable()
	if (typeof fvTable != 'undefined' && fvTable != null) { 
        fvTable.fnClearTable(0); //清空数据
        fvTable.fnDraw();     //重新加载数据
　　　    //fvTable.fnAdjustColumnSizing(); //重新判断列宽度，实际执行并没有效果　
     }else{
    	fvTable = $('#ordersTable').dataTable({
		"processing" : true,
		"serverSide" : true,
		"sAjaxDataProp" : "data",
		"bPaginite" : true, //使用分页  bPaginate
		//        "sPaginationType": "full_numbers",
		"bAutoWidth" : true,
		"bFilter" : false, //不使用搜索 
		"bLengthChange" : false, //是否启用设置每页显示记录数 
		"bSort" : true, //是否使用排序 
		"aaSorting": [ [ 0, "asc"]], 
		"bInfo" : false, //是否显示表格的一些信息
		"bScrollInfinite":false,
		//        "aaSorting": [[0, "desc"]],
		//        "sScrollX": "100%", //横向滚动条 
//		"sScrollXInner" : "100%",
//		"sPaginationType" : "full_numbers",
		"bJQueryUI":false,
		"oLanguage" : {
			"sProcessing" : "Loading......",
//			            "sLengthMenu": "每页显示 _MENU_ 条记录",
			"sLengthMenu":"Show_MENU_Rows",
			"sZeroRecords" : "对不起，查询不到相关数据！",
			"sEmptyTable" : "No Data！",
			//            "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
			//            "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
//			            "sSearch": "搜索",
			"sSearch":"Search",
//			"oPaginate" : {
////				"sFirst" : "首页",
//				"sPrevious" : "上一页",
//				"sNext" : "下一页",
////				"sLast" : "尾页"
//			}
		},
		"iDisplayLength" : 10, //默认为10
		"ajax" : {
			"url" : "unsettledOrders/find",
			"type" : "GET"
		},
		"columns" : [
		{
			"data" : "orderNo"
		}, {
			"data" : "account"
		}, {
			"data" : "orderTime"
		},
		{
			"data" : "tradeTime"
		}, 
		{
			"data" : "amount"
		}
		, 
		{
			"data" : "status"
		}
		],
		"columnDefs":[
		 { 
			 "targets": [5],
			 "data":"status",
			"render":function (data,type,row) {
				if(data == 1){
					return msg['order_status_undeal'];
				} else if(data == 4){
					return msg['order_status_return'];
				}
                return row; 
			}
		 },
		{
			 "targets": [6],
			 "data":"id",
			"render":function (data,type,row) {
				if(row.status == '1'){
					return "<a href='javascript:deal("+data+")' >"+msg['order_btn_send']+"</a>";
				}
                return "<a href='javascript:deal("+data+")' >"+msg['order_btn_send']+"</a>" + "   <a href='javascript:reject("+data+")' >"+msg['order_btn_reject']+"</a>"; 
			}
		 }]
	});
    }
}
/**
 * 将未处理的订单改为【已发送】
 * @param data
 * @returns
 */
function deal(id){
	$.get("unsettledOrders/send/"+id,function(data){
		if(data.head.rep_code == 200){
			addTableInfo(msg);
		}
	});
}

/**
 * 申请换货的订单改为【拒绝换货】
 * @param data
 * @returns
 */
function reject(id){
	$.get("unsettledOrders/reject/"+id,function(data){
		if(data.head.rep_code == 200){
			addTableInfo(msg);
		}
	});
}