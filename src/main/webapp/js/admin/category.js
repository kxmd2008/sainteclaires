$(document).ready(function(){
	findCates();
	findParentCats();
});

var currPageItems = {};
var parents = {};
function findCates(){
	$.post("category/find.do", function(data, status) {
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
	$.post("parentCats/find.do", function(data, status) {
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
	$.post("category/save.do", d, function(data){
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
				alert(toString(currPageItems[id]));
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
	$.get("category/delete/"+id+".do", function(data){
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
