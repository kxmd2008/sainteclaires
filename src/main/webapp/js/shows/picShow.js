
function ilovepic(picId){
	var love = Number($("#love" + picId).html());
	$("#love" + picId).html(love + 1);
	$.post("../love", {"id":picId}, function(msg){
		if(msg.head.rep_code == 200){
			
		}
	});
}

function detailtilovepic(picId){
	var love = Number($("#love" + picId).html());
	$("#love" + picId).html(love + 1);
	$.post("show/love", {"id":picId}, function(msg){
		if(msg.head.rep_code == 200){
			
		}
	});
}

function getBasePath(){ 
	var obj=window.location; 
	var contextPath=obj.pathname.split("/")[1]; 
	var basePath=obj.protocol+"//"+obj.host+"/"+contextPath; 
	return basePath; 
} 