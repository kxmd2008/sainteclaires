$(document).ready(function(){
	$("#custName").on("blur",function(){
		var custName = $("#custName").val();
		if(custName == null || custName == ""){
			showMsg("收货人不能为空!");
		}
	});
	$("#post").on("blur",function(){
		var post = $("#post").val();
		if(post == null || post == ""){
			showMsg("邮编不能为空!");
		}
	});
	$("#telphone").on("blur",function(){
		var telphone = $("#telphone").val();
		if(telphone == null || telphone == ""){
			showMsg("电话不能为空!");
		}
	});
	$("#address").on("blur",function(){
		var address = $("#address").val();
		if(address == null || address == ""){
			showMsg("收货人地址不能为空!");
		}
	});
	chooseAddress();
});
/**
 * 选择收货地址
 */
function chooseAddress(){
	$(".list-inline .box").on("click",function(){
		// 请求后台设当前地址为默认地址
		var id = $(this).children("input").val();
		var box = $(this);
		$.get("address/default/"+id  , function(msg){
			if(msg.head.rep_code == 200){
				$(".list-inline .box div").each(function(index){
					$(this).css("display","none");
				});
				box.children("div").css("display" , "block");
			}
		});
	});
}
function showMsg(msg){
	$(".alert-danger").css("display","block");
	$(".alert-danger").html(msg);
	$(".alert-success").css("display","none");
}
function checkForm(){
	var custName = $("#custName").val();
	var address = $("#address").val();
	var tepphone = $("#telphone").val();
	var post = $("#post").val();
	if(custName == null || custName == ""){
		showMsg("收货人不能为空!");
		return false;
	}
	if(post == null || post == ""){
		showMsg("邮编不能为空!");
		return false;
	}
	if(telphone == null || telphone == ""){
		showMsg("电话不能为空!");
		return false;
	}
	if(address == null || address == ""){
		showMsg("收货人地址不能为空!");
		return false;
	}
	var danger = $(".alert-danger").css("display");
	if(danger == "block"){
		return false;
	}
	return true;
}