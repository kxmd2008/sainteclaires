$(document).ready(function(){
	$('#choose_category').multiselect();
});
var URL = "/";
function saveProduct(){
	alert($("#example19").val());
	var cateId = $("#choose_category").val();//123:1,245:2
	var name = $("#name").val();
	var price = $("#price").val();
	var num = $("#num").val();
	var meses06 = $("#meses06").val();
	var meses09 = $("#meses09").val();
	var meses12 = $("#meses12").val();
	var meses18 = $("#meses18").val();
	var meses24 = $("#meses24").val();
	var desc = $("#desc").val();
	var isNew = $("#isNew").val() == 'on' ? true : false;
	var pics = $("#pics").val();
	$("#files").children().each(function(i, tr){
//		pics[i] = $(tr).find("p").html();
		pics += $(tr).find("p").html()+",";
	});
	var d = {
		"categoryId" : cateId,	
//		"categoryName" : $("#cateName").val(),	
		"name" : name,	
		"price" : price,	
		"num" : num,	
		"meses06" : meses06,	
		"meses09" : meses09,	
		"meses12" : meses12,	
		"meses18" : meses18,	
		"meses24" : meses24,	
		"description" : desc,	
		"isNew" : isNew,	
		"pics" : pics	
	};
	var id = $("#productId").val();
	if(id){
		d["id"] = id;
	}
	$.post("product/save", d, function(data){
		if(data.head.rep_code == '200'){
			location.href = "products";
		}
	});
}

function selectCate(id, name){
	$("#cateId").val(id);
	$("#cateName").val(name);
	$("#catLabel").html(name);
}

function tostring(json){
	return JSON.stringify(json);
}