function edit(productId){
	var url = "shot/edit/" + productId + "/" + $("#cleaninit1").val();
	$.get(url, function(data){
		if(data.head.rep_code == '200'){
			$("#totalAmount1").html(data.item.amount);
			$("#totalAmount2").html(data.item.amount);
			$(data.item.items).each(function(index){
				if(data.item.items[index].productId == productId){
					$("#sum" + productId).html(data.item.items[index].sum);
				}
			});
		}
	});
}

/**
 * 商品数量增加1
 */
function addNumber(id, productId){
	var $cleaninit = $("#" + id);
	var value = $cleaninit.val();
	value = eval(value+"+"+1);
	$cleaninit.val(value);
	edit(productId);
}

/**
 * 商品数量减少1
 */
function delNumber(id, productId){
	var $cleaninit = $("#" + id);
	var value = $cleaninit.val();
	if(value > 1){
		value = eval(value+"-"+1);
		$cleaninit.val(value);
		edit(productId);
	}
}

function changeNum(productId){
	var num = $("#cleaninit1").val();
	if(num < 1){
		$("#cleaninit1").val("1");
	} else {
		edit(productId);
	}
}