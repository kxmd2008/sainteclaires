$(document).ready(function(){
	var locale = $("#locale").val();
	if(locale == 'en_US'){
		$.getJSON("js/customer/en_US.json",function(data){ 
			checkLoginName(data);
			checkPassword(data);
			checkPasswordAgin(data);
		});
	} else {
		$.getJSON("js/customer/zh_CN.json",function(data){ 
			checkLoginName(data);
			checkPassword(data);
			checkPasswordAgin(data);
		});
	}
});
/**
 * 验证注册名称是否存在
 */
function checkLoginName(msg){
	$("#loginName").on("blur",function(){
		var $loginName = $("#loginName").val();
		if($loginName == null || $loginName == ""){
			$("#loginMsg").css("display","block");
			$("#loginMsg font").html(msg['account_not_null']);
		}else{
			$("#loginMsg").css("display","none");
		}
		var d = {"loginName":$loginName};
		$.post("account/check",d , function(data){
			if(data.head.rep_code != 200){
				$("#loginMsg").css("display","block");
				$("#loginMsg").html("<font color='red'>"+msg['account_exist']+"</font>");
			}
		});
	});
}
/**
 * 验证两次输入密码是否一致
 */
function checkPasswordAgin(msg){
	$("#passwordAgin").on("blur",function(){
		var $passwordAgin = $("#passwordAgin").val();
		var $password = $("#password").val();
		if($passwordAgin == null || $passwordAgin == ""){
			$("#passwordAginMsg").css("display","block");
			$("#passwordAginMsg font").html(msg['password_confirm_not_null']);
			return;
		}else{
			$("#passwordAginMsg").css("display","none");
		}
		if($passwordAgin != $password){
			$("#passwordAginMsg").css("display","block");
			$("#passwordAginMsg font").html(msg['password_not_same']);
		}else{
			$("#passwordAginMsg").css("display","none");
		}
	});
}
function checkPassword(msg){
	$("#password").on("blur",function(){
		var $password = $("#password").val();
		var reg=/^(?=.*?[a-zA-Z])(?=.*?[0-9])[a-zA-Z0-9]{6,16}$/;
		if($password == null || $password ==""){
			$("#passwordMsg").css("display","block");
			$("#passwordMsg font").html(msg['password_not_null']);
			return;
		}else{
			$("#passwordMsg").css("display","none");
		}
//		alert(reg.test($password));
		if(!reg.test($password)){
			$("#passwordMsg").css("display","block");
			$("#passwordMsg font").html(msg['password_rule']);
		}else{
			$("#passwordMsg").css("display","none");
		}
	});
}
function checkForm(){
	var passwordMsg = $("#passwordMsg").css("display");
	var passwordAginMsg = $("#passwordAginMsg").css("display");
	var loginMsg = $("#loginMsg").css("display");
	if(passwordMsg == "none" && passwordAginMsg == "none" && loginMsg == "none"){
		return true;
	}
	return false;
}