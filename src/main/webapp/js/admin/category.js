$(document).ready(function(){
//	findCates();
	addTableInfo();
	findParentCats();
});

var currPageItems = {};
var parents = {};
var fvTable ;
function addTableInfo(){
	//为了避免多次初始化datatable()
	if(typeof fvTable != 'undefined' && fvTable != null) { 
//		var data = {
//			"orderNo" : orderNo,
//			"customerNo":customerNo
//		};
//		fvTable.ajax.data = data;
        fvTable.fnClearTable(false); //清空数据 ，false少调用一个后台
//        oTable.fnSettings().sAjaxSource='/you.action?date='+date; 
//        fvTable.fnSettings().ajax.data = data;   //点击按钮事件后
        fvTable.fnDraw();     //重新加载数据
     }else{
    	fvTable = $('#catogrys').dataTable({
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
			"url" : "category/find",
//			"data" : {
//				"orderNo" : orderNo,
//				"customerNo":customerNo
//			},
			"type" : "GET",
			"dataType":"json"  ,
		},
		"columns" : [
		{
			"data" : "orderNo"
		}, {
			"data" : "parentName"
		}, {
			"data" : "name"
		},
		{
			"data" : "id"
		}
		],
		"fnCreatedRow" : function(nRow, data, iDataIndex) {
				$(nRow).attr("id","row"+data.id);
				currPageItems[data.id] = data;
				$('td:eq(0)', nRow).html(function() {
					return (iDataIndex+1);
				});
				$('td:eq(1)', nRow).attr("id" , "parentName"+data.id).html(function() {
					return data.parentName;
				});
				$('td:eq(2)', nRow).attr("id", "name" + data.id).html(function() {
					return data.name;
				});
				$('td:eq(3)', nRow).css("width" , "40px").html(function() {
					var ls = '<a href="#" role="button" data-toggle="modal" onclick="showDlg('+ "'修改类别'"+', '+ data.id+')" class="icon-pencil"></i></a>'
					+ '&nbsp;&nbsp;'
					+ '<a href="#myModal" role="button" data-toggle="modal" onclick="beforDelete('+ data.id+');"> <i class="icon-remove"></i></a>';
					$("#rowIndex").val(iDataIndex);
					return ls;
				});
			}
    	});
    }
}
function buildCat(info, index){
	var ls = '<tr id="row' + info.id + '"><td >' + (index + 1)
	+ '</td><td id="parentName'+ info.id+'">' + info.parentName
	+ '</td><td id="name'+ info.id+'">' +  info.name
	+ '</td><td style="width:40px;">'
	+ '<a href="#" role="button" data-toggle="modal" onclick="showDlg(' + "'修改类别'"+', '+ info.id+')" class="icon-pencil"></i></a>'
	+ '&nbsp;&nbsp;'
	+ '<a href="#myModal" role="button" data-toggle="modal" onclick="beforDelete('+ info.id+');"> <i class="icon-remove"></i></a>'
	+'</td>';
	$("#rowIndex").val(index);
return ls;
}
function findCates(){
	$.post("category/find", function(data, status) {
		if (data.head.rep_code='200') {
			$(data.records).each(function(index) {
				var value = data.records[index];
				currPageItems[value.id] = value;
				var ls = buildCat(value, index);
				$("#tbody").append(ls);
			});
	//		searchCodeCallBack(data, "codeBody", mycode);
	//		paginatorPost(data, "codeBody", d, RPC_URL + "/find",
	//				searchCodeCallBack, mycode);
		} else {
			
		}
	});
}

function findParentCats(){
	$.post("parentCats/find", function(data, status) {
		if (data.head.rep_code='200') {
			$("#parentId").empty();
			$("#parentId").append("<option>");
			$(data.records).each(function(index) {
				var value = data.records[index];
				parents[value.id] = value;
				$("#parentId").append(buildCatSelects(value));
			});
		} else {
			alert("error");
		}
	});
}

function showDlg(title, id){
	alert("id="+id);
	$("#catLabel").html(title);
	if(id){
		$("#id").val(currPageItems[id].id);
		 $("#parentId").val(currPageItems[id].parentId);
		 $("#cname").val(currPageItems[id].name);
		 $("#orderNo").val(currPageItems[id].orderNo);
	} else {
		$("#id").val("");
		 $("#parentId").val("");
		 $("#cname").val("");
		 $("#orderNo").val("");
	}
	$("#catModel").modal();
}

function buildCatSelects(cat){
	var op = '<option id="option'+cat.id+'" value="'+cat.id+'">' + cat.name;
	return op;
}

function saveCategory(){
	// $("#tab").submit();
	var id = $("#id").val();
	var d = {
			"id" : id,
			"parentId" : $("#parentId").val(),
			"parentName" : $("#parentName").val(),
			"name" : $("#cname").val(),
			"orderNo" : $("#orderNo").val()
	};
	$.post("category/save", d, function(data){
		if(data.head.rep_code='200'){
			if("" == id){//new
				findParentCats();
				var index = Number($("#rowIndex").val())+1;
				var ls = buildCat(data.item, index);
				$("#tbody").append(ls);
			} else{//edit
				currPageItems[id].name = d.name;
				currPageItems[id].orderNo = d.orderNo;
				currPageItems[id].parentId = d.parentId;
				currPageItems[id].parentName = d.parentName;
				$("#parentName" + id).html(currPageItems[id].parentName);
				$("#name" + id).html(currPageItems[id].name);
			}
		} else {
			alert(data.head.rep_message);
		}
	});
}

function paginatorPost(respMsg, listDivId, searchInfo, url, callBack, mycode) {
	var options = {
		bootstrapMajorVersion : 3,
		currentPage : respMsg.data.currentPage,
		totalPages : respMsg.data.totalPage,
		numberOfPages : 5,
		useBootstrapTooltip : true,
		onPageChanged : function(event, oldPage, newPage) {
			searchInfo.currPage = newPage;
			$.post(url, searchInfo, function(data) {
				if (callBack && typeof (callBack) == "function") {
					callBack(data, listDivId, mycode);
				}
			});
		},
	};
	$('#paginator').bootstrapPaginator(options);
}

function searchCodeCallBack(data, listDivId, mycode) {
	$("#" + listDivId).empty();
	currPageItems = {};
	$(data.items).each(function(index) {
		var value = data.items[index];
		currPageItems[value.id] = value;
		var ls = buildCodes(value, mycode);
		$("#" + listDivId).append(ls);
	});
}


function beforDelete(catId){
	$("#catId").val(catId);
}

function deleteCategory(){
	var id = $("#catId").val();
//	var currUrl = location.href;
//	var url;
//	if(currUrl.concat("/category/")){
//		url = "delete/";
//	}else {
//		url = "category/delete/";
//	}
	$.get("category/delete/"+id, function(data){
		if(data.head.rep_code='200'){
			$("#row" + id).remove();
			if(currPageItems[id].parentId == null){
				var index = Number($("#rowIndex").val()) - 1;
				$("#rowIndex").val(index);
				findParentCats();
				delete currPageItems[id];
			}
		} else {
			alert(data.head.rep_message);
		}
	});
}

function parentChange(id){
	var pname = $("#option"+id).html();
	$("#parentName").val(pname);
}

function getJsonLength(json){
	var len=0;
	if(Boolean(json)){
		for(i in json) len++;
	}
	return len;
}

function toString(o){
	return JSON.stringify(o);
}
