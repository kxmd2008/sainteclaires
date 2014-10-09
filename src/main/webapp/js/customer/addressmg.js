var msg = {};
$(document).ready(function(){
//	var locale = $("#locale").val();
	var locale = $("#localeSel").val();
	if(locale == 'zh_CN'){
		$.getJSON("zh_CN.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
			bindEvent(data);
		});
	} else {
		$.getJSON("js/customer/en_US.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
			bindEvent(data);
		});
	}
	chooseAddress();
});

function bindEvent(msg){
	$("#custName").on("blur",function(){
		var custName = $("#custName").val();
		if(custName == null || custName == ""){
			showMsg(msg['reciever_not_null']);
		}
	});
	$("#post").on("blur",function(){
		var post = $("#post").val();
		if(post == null || post == ""){
			showMsg(msg['post_not_null']);
		}
	});
	$("#telphone").on("blur",function(){
		var telphone = $("#telphone").val();
		if(telphone == null || telphone == ""){
			showMsg(msg['phone_not_null']);
		}
	});
	$("#address").on("blur",function(){
		var address = $("#address").val();
		if(address == null || address == ""){
			showMsg(msg['addr_not_null']);
		}
	});
}
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
	var telphone = $("#telphone").val();
	var post = $("#post").val();
	if(custName == null || custName == ""){
		showMsg(msg['reciever_not_null']);
		return false;
	}
	if(post == null || post == ""){
		showMsg(msg['post_not_null']);
		return false;
	}
	if(telphone == null || telphone == ""){
		showMsg(msg['phone_not_null']);
		return false;
	}
	if(address == null || address == ""){
		showMsg(msg['addr_not_null']);
		return false;
	}
	var danger = $(".alert-danger").css("display");
	if(danger == "block"){
		return false;
	}
	return true;
}