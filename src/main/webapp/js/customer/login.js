$(document).ready(function(){
	$("#loginName").on("blur",function(){
		var username = $("#loginName").val();
		if(username == null || username == ""){
			$("#loginMsg").css("display","block");
			$("#loginMsg font").html("账号不能为空");
		}else{
			$("#loginMsg").css("display","none");
		}
	});
	$("#password").on("blur",function(){
		var password = $("#password").val();
		if(password == null || password == ""){
			$("#passwordMsg").css("display","block");
			$("#passwordMsg font").html("密码不能为空");
		}else{
			$("#passwordMsg").css("display","none");
		}
	});
});
function checkForm(){
	var passwordMsg = $("#passwordMsg").css("display");
	var loginMsg = $("#loginMsg").css("display");
	if(passwordMsg == "none"  && loginMsg == "none"){
		return true;
	}
	return false;
}