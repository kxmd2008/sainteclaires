$(document).ready(function(){
	var locale = $("#locale").val();
	if(locale == 'en_US'){
		$.getJSON("js/customer/en_US.json",function(data){ 
			bindEvent(data);
		});
	} else {
		$.getJSON("js/customer/zh_CN.json",function(data){ 
			bindEvent(data);
		});
	}
});

function bindEvent(msg){
	$("#loginName").on("blur",function(){
		var username = $("#loginName").val();
		if(username == null || username == ""){
			$("#loginMsg").css("display","block");
			$("#loginMsg font").html(msg.account_not_null);
		}else{
			$("#loginMsg").css("display","none");
		}
	});
	$("#password").on("blur",function(){
		var password = $("#password").val();
		if(password == null || password == ""){
			$("#passwordMsg").css("display","block");
			$("#passwordMsg font").html(msg.password_not_null);
		}else{
			$("#passwordMsg").css("display","none");
		}
	});
}
function checkForm(){
	var passwordMsg = $("#passwordMsg").css("display");
	var loginMsg = $("#loginMsg").css("display");
	if(passwordMsg == "none"  && loginMsg == "none"){
		return true;
	}
	return false;
}