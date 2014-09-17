$(document).ready(function(){
	chooseAddress();
});
/**
 * 选择收货地址
 */
function chooseAddress(){
	$(".list-inline .box").on("click",function(){
		$(".list-inline .box div").each(function(index){
			$(this).css("display","none");
		});
		$(this).children("div").css("display" , "block");
		// 请求后台设当前地址为默认地址 TODO
	});
}
/**
 * open添加地址展示页面
 */
function addAddressShow(){
	$("#add_address").modal('show');
}
/**
 * 添加地址保存到后台
 */
function addAddress(){
	var username = $("#username").val();
	var telphone = $("#telphone").val();
	var postcode = $("#postcode").val();
	var detail = $("#detail").val();
	var data = {
			"custName":username,
			"telphone":telphone,
			"post":postcode,
			"address":detail
	};
	$.post("" , data , function(msg){
		if(msg.head.rep_code == 200){
			var ls = buildBox(data);
			var $divBox = $("#address_box");
			$divBox.prepend(ls);
			$("#add_address").modal("hide");
		}
	});
}
/**
 * 构建收货地址
 * @param data
 * @returns {String}
 */
function buildBox(data){
	var ls = '<div class="pull-left box">'+
				'<ul class="list-unstyled" style="padding:8px;margin-bottom:0px;">'+
					'<li style="text-align:left;font-size:10px;">'+data.custName+' 收</li>'+
					'<li><hr style="margin-top:0px;margin-bottom:5px;"></li>'+
					'<li style="text-align:left;font-size:10px;">'+data.address+' '+data.telphone+' '+data.post+'</li>'+
				'</ul>'+
				'<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;display:block;" class="pull-right">'+
					'<label class="fontSize" style="font-size:8px;font-weight: normal;"><font color="white">默认地址</font></label>'+
				'</div>'+
			'</div>';
	return ls;
}
/**
 * 得到所有的收货地址
 */
function getAddressAll(){
	$.get("addresses",function(msg){
		if(msg.head.rep_code == 200){
			$(msg.records).each(function(index){
				var item = msg.records[index];
				ls = buildBox(item);
				$divBox.prepend(ls);
			});
		}
	});
}
