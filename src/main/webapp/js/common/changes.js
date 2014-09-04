$(document).ready(function(){
	
});
function openCollapse(){
	if($("#collapseIcon").hasClass("glyphicon-minus")){
		$("#collapseIcon").removeClass("glyphicon-minus").addClass("glyphicon-plus");
	} else {
		$("#collapseIcon").removeClass("glyphicon-plus").addClass("glyphicon-minus");
	}
}