var msg = {};
$(document).ready(function() {
	var locale = $("#locale").val();
	$('#quarter').multiselect({
		maxHeight : 280,
		buttonWidth : '220px',
		nonSelectedText : '选择类别'
	});
	if(locale == 'zh_CN'){
		$('#choose_category').multiselect({
			maxHeight : 280,
			buttonWidth : '220px',
			nonSelectedText : '选择类别'
		});
		$.getJSON("../js/admin/zh_CN.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
//			validatorProduct(data);
		});
	}else{
		$('#choose_category').multiselect({
			maxHeight : 280,
			buttonWidth : '220px',
			nonSelectedText : 'Select Category'
		});
		$.getJSON("../js/admin/en_US.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
//			validatorProduct(data);
		});
	}
	
});
var URL = "/";

function save(){
	var year = $("#year").val();
	var quarter = $("#quarter").val();
	var cateId = $("#choose_category").val();
	var pics = "";
	$("#files").children().each(function(i, tr){
		pics += $(tr).find("p").html()+",";
	});
	var d = {
		"cateId" : cateId,
		"year" : year,
		"quarter" : quarter,	
		"path" : pics.substring(0, pics.length-1)	
	};
	$.post("picShow/save", d, function(data){
		if(data.head.rep_code == '200'){
			$("#files").html("");
			$("#myModal").modal('show');
		} else {
			alert(data.head.rep_message);
		}
	});
}