$(document).ready(function(){
	addTableInfo();
});
var URL = "/";
var fvTable;
function addTableInfo(){
	var locale = $("#locale").val();
	//为了避免多次初始化datatable()
	if(typeof fvTable != 'undefined' && fvTable != null) { 
        fvTable.fnClearTable(false); //清空数据 ，false少调用一个后台
        fvTable.fnDraw();     //重新加载数据
     }else{
    	fvTable = $('#products').dataTable({
		"processing" : true,
		"serverSide" : true,
		"sAjaxDataProp" : "data",
		"bPaginite" : true, //使用分页  bPaginate
		"bAutoWidth" : true,
		"bFilter" : false, //不使用搜索 
		"bLengthChange" : false, //是否启用设置每页显示记录数 
		"bSort" : true, //是否使用排序 
		"aaSorting": [ [ 0, "asc"]], 
		"bInfo" : false, //是否显示表格的一些信息
		"bScrollInfinite":false,
		"bJQueryUI":false,
		"oLanguage" : {
			"sProcessing" : "Loading......",
			"sLengthMenu":"Show_MENU_Rows",
			"sZeroRecords" : "No matching records found",
			"sEmptyTable" : "No Data！",
			"sSearch":"Search",
		},
		"iDisplayLength" : 10, //默认为10
		"ajax" : {
			"url" : "products/find",
			"type" : "GET",
			"dataType":"json"  ,
		},
		"columns" : [
		{
			"data" : "categoryId"
		},
		{
			"data" : "name"
		}, {
			"data" : "categorys"
		}, {
			"data" : "price"
		},
		{
			"data" : "num"
		},
		{
			"data" : "id"
		}
		],
		"fnCreatedRow" : function(nRow, data, iDataIndex) {
				$('td:eq(0)', nRow).html(function() {
					return (iDataIndex+1);
				});
				$('td:eq(1)', nRow).html(function() {
					if(locale == 'zh_CN'){
						return data.name;
					} else {
						return data.nameEn;
					}
				});
				$('td:eq(2)', nRow).html(function() {
					var name = "";
					$(data.categorys).each(function(index){
						if(locale == 'zh_CN'){
							name+=data.categorys[index].name + ",";
						} else {
							name+=data.categorys[index].nameEn + ",";
						}
					});
					return name.substring(0, name.length-1);
				});
				$('td:eq(3)', nRow).html(function() {
					return data.price;
				});
				$('td:eq(4)', nRow).html(function() {
					return data.num;
				});
				$('td:eq(5)', nRow).css("width" , "40px").html(function() {
					var ls = '<a href="productEdit?id='+data.id+'"><i class="icon-pencil"></i></a> <a'
						+' href="javascript:showDialog(\''+data.id+'\')" role="button" ><i '
						+ 'class="icon-remove"></i></a>';
					return ls;
				});
			}
    	});
    }
}
function showDialog(id){
	$("#product_id").val(id);
	$("#myModal").modal('show');
}
function productDelete(id){
	var id = $("#product_id").val();
	$.get("product/delete?id="+id,function(msg){
		if(msg.head.rep_code == "200"){
			addTableInfo();
			$("#myModal").modal('hide');
		}
	});
}
