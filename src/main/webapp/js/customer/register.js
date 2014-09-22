$(document).ready(function(){
	checkLoginName();
	checkPassword();
	checkPasswordAgin();
});
/**
 * 验证注册名称是否存在
 */
function checkLoginName(){
	$("#loginName").on("blur",function(){
		var $loginName = $("#loginName").val();
		if($loginName == null || $loginName == ""){
			$("#loginMsg").css("display","block");
			$("#loginMsg font").html("账号不能为空");
		}else{
			$("#loginMsg").css("display","none");
		}
		var data = {"loginName":$loginName};
		$.post("account/check",data , function(msg){
			if(msg.head.rep_code != 200){
				$("#loginMsg").css("display","block");
				$("#loginMsg").html("<font color='red'>用户名已存在</font>");
			}
		});
	});
}
/**
 * 验证两次输入密码是否一致
 */
function checkPasswordAgin(){
	$("#passwordAgin").on("blur",function(){
		var $passwordAgin = $("#passwordAgin").val();
		var $password = $("#password").val();
		if($passwordAgin == null || $passwordAgin == ""){
			$("#passwordAginMsg").css("display","block");
			$("#passwordAginMsg font").html("确认密码不能为空");
			return;
		}else{
			$("#passwordAginMsg").css("display","none");
		}
		if($passwordAgin != $password){
			$("#passwordAginMsg").css("display","block");
			$("#passwordAginMsg font").html("两次输入密码不一致");
		}else{
			$("#passwordAginMsg").css("display","none");
		}
	});
}
function checkPassword(){
	$("#password").on("blur",function(){
		var $password = $("#password").val();
		var reg=/^(?=.*?[a-zA-Z])(?=.*?[0-9])[a-zA-Z0-9]{6,16}$/;
		if($password == null || $password ==""){
			$("#passwordMsg").css("display","block");
			$("#passwordMsg font").html("密码不能为空");
			return;
		}else{
			$("#passwordMsg").css("display","none");
		}
//		alert(reg.test($password));
		if(!reg.test($password)){
			$("#passwordMsg").css("display","block");
			$("#passwordMsg font").html("密码为6~16为由数字+字母组成");
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