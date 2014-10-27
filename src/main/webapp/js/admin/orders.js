var fvTable ;
var orderNo="" ;
var customerNo="" ;
var msg = {};
$(document).ready(function() {
	orderNo = $("#order_no").val();
	customerNo = $("#account_no").val();
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
function addTableInfo(msg){
	//为了避免多次初始化datatable()
	if(typeof fvTable != 'undefined' && fvTable != null) { 
		var data = {
			"orderNo" : orderNo,
			"customerNo":customerNo
		};
//		fvTable.ajax.data = data;
        fvTable.fnClearTable(false); //清空数据 ，false少调用一个后台
//        oTable.fnSettings().sAjaxSource='/you.action?date='+date; 
        fvTable.fnSettings().ajax.data = data;   //点击按钮事件后
        fvTable.fnDraw();     //重新加载数据
     }else{
    	fvTable = $('#orders').dataTable({
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
			"sZeroRecords" : "No matching records found",
			"sEmptyTable" : "No Data！",
			//            "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
			//            "sInfoFiltered": "数据表中共为 _MAX_ 条记录",
//			            "sSearch": "搜索",
			"sSearch":"Search",
		},
		"iDisplayLength" : 10, //默认为10
		"ajax" : {
			"url" : "orders/find",
			"data" : {
				"orderNo" : orderNo,
				"customerNo":customerNo
			},
			"type" : "POST",
			"dataType":"json"  ,
		},
		"columns" : [
		{
			"data" : "orderNo"
		}, {
			"data" : "account"
		}, {
			"data" : "orderDate"
		},
		{
			"data" : "tradeDate"
		}, 
		{
			"data" : "amount"
		}
		],
		"columnDefs":[
		 { 
			 "targets": [5],
			 "data":"status",
			"render":function (data,type,row) {
				if(data == 0){
					return "<font color='#7761A7'>"+msg['order_status_unpay']+"</font>";
				}else if(data == 1){
					return "<font color='red'>"+msg['order_status_undeal']+"</font>";
				}else if(data == 2){
					return "<font color='blue'>"+msg['order_status_send']+"</font>";
				}else if(data ==3){
					return "<font color='green'>"+msg['order_status_deliveried']+"</font>";
				}else if(data ==4){
					return "<font color='green'>"+msg['order_status_return']+"</font>";
				}else if(data ==5){
					return "<font color='red'>"+msg['order_status_return_reject']+"</font>";
				} else {
					return "<font color='green'>"+msg['order_status_complete']+"</font>";
				}
			}
		 }]
	});
    }
}
/**
 * 点击搜索按钮，搜索
 */
function search(){
	orderNo = $("#order_no").val();
	customerNo = $("#account_no").val();
	//先清空数据，然后重新加载
	addTableInfo(msg);
}
