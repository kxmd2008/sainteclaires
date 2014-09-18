$(document).ready(function(){
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
