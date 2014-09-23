var URL = "/";
function save(){
	var category = $("#category").val();//123:1,245:2
	var pics = $("#picStr").val();
	$("#files").children().each(function(i, tr){
		pics += $(tr).find("p").html()+",";
	});
	var d = {
		"name" : category,	
		"pics" : pics.substring(0, pics.length-1)	
	};
	var id = $("#bgId").val();
	if(id){
		d["id"] = id;
	} 
	$.post("bg/save", d, function(data){
		if(data.head.rep_code == '200'){
			location.href = "bgMgt";
		}
	});
}

function tostring(json){
	return JSON.stringify(json);
}