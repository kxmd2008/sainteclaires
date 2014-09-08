$(document).ready(function(){
	checkLoginName();
//	checkPassword();
	checkPasswordAgin();
});
/**
 * 验证注册名称是否存在
 */
function checkLoginName(){
	$("#loginName").on("blur",function(){
		var $loginName = $("#loginName").val();
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
		alert($password + ","+$passwordAgin);
		if($passwordAgin != $password){
			$("#passwordAginMsg").css("display","block");
			$("#passwordAginMsg").html("<font color='red'>两次输入密码不一致</font>");
			$("#passwordAgin").val("");
		}
	});
}
function checkPassword(){
	alert("aa");
	$("#password").on("blur",function(){
//		^.{3}$
//		reg=/^[a-z,A-Z]+$/;
		alert("bb");
		alert(reg.test($("#password")));
		reg = /^[a-z,A-Z,0-9]{6,20}$/;
		if(!reg.test($("#password"))){
			alert("cc");
			$("#passwordMsg").html("<font color='red'>密码6~16位数字/字母/符号</font>");
		}
	});
}