var fvTable ;
var orderNo="" ;
var customerNo="" ;
$(document).ready(function() {
	orderNo = $("#order_no").val();
	customerNo = $("#account_no").val();
	addTableInfo();
} );
function addTableInfo(){
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
//			"oPaginate" : {
////				"sFirst" : "首页",
//				"sPrevious" : "上一页",
//				"sNext" : "下一页",
////				"sLast" : "尾页"
//			}
		},
//		"bSearchable":true,
//		"bStateSave":true,
		"iDisplayLength" : 10, //默认为10
		"ajax" : {
			"url" : "orders/find.do",
			"data" : {
				"orderNo" : orderNo,
				"customerNo":customerNo
			},
			"type" : "POST",
			"dataType":"json"  ,
//			"data":"orderNo="+orderNo+"&customerNo="+customerNo,
		},
//		"sServerMethod": "POST",   
//		"sAjaxSource": "orders/find.do",
//		"fnServerParams": function (aoData) {  
//			            aoData.push({"orderNo": orderNo, "customerNo":customerNo});  
//		}, 
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
//		, 
//		{
//			"data" : "status"
//		}
		],
		"columnDefs":[
		 { 
			 "targets": [5],
			 "data":"status",
			"render":function (data,type,row) {
				if(data == 0){
					return "<font color='#7761A7'>待付款</font>";
				}else if(data == 1){
					return "<font color='red'>已付款未处理</font>";
				}else if(data == 2){
					return "<font color='blue'>已发送</font>";
				}else if(data ==3){
					return "<font color='green'>已收货</font>";
				}
			}
		 }]
	});
//    	Datarow[] dr=dt.select("条件");
//    	DataTable dt;
//    	DataTable newdt=dt.DefaultView.ToTable(true, new string[]{"id"});
    }
}
/**
 * 点击搜索按钮，搜索
 */
function search(){
	alert("aaaaaaaaaa");
	orderNo = $("#order_no").val();
	customerNo = $("#account_no").val();
	alert("orderNo="+orderNo);
	alert("customerNo="+customerNo);
	//先清空数据，然后重新加载
	addTableInfo();
}
