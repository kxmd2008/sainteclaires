var msg = {};
$(document).ready(function() {
	var locale = $("#locale").val();
	if(locale == 'zh_CN'){
		$('#choose_category').multiselect({
			maxHeight : 280,
			buttonWidth : '220px',
			nonSelectedText : '选择类别'
		});
		$.getJSON("../js/admin/zh_CN.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
			validatorProduct(data);
		});
	}else{
		$('#choose_category').multiselect({
			maxHeight : 280,
			buttonWidth : '220px',
			nonSelectedText : 'Select Category'
		});
		$.getJSON("../js/admin/en_US.json",function(data){ 
			for (var key in data) {
				msg[key] = data[key];
			}
			validatorProduct(data);
		});
	}
	
});
var URL = "/";
var numReg = /^\d+$/;
function validatorProduct(msg) {
	var numReg = /^\d+$/;
	$("#choose_category").change(function(){
		showCategoryMsg(msg);
	});
	$("#name").on("blur", function() {
		showNameMsg(msg);
	});
	$("#nameEn").on("blur",function(){
		showNameEnMsg(msg);
	});
	$("#price").on("blur", function() {
		showPriceMsg(msg);
	});
	$("#quarter").change(function() {
		showQuarterMsg(msg);
	});
	$("#num").on("blur", function() {
		showNumMsg(msg);
	});
	$("#meses06").on(
			"blur",
			function() {
				showMeses06Msg(msg);
			});
	$("#meses09").on(
			"blur",
			function() {
				showMeses09Msg(msg);
			});
	$("#meses12").on(
			"blur",
			function() {
				showMeses12Msg(msg);
			});
	$("#meses18").on(
			"blur",
			function() {
				showMeses18Msg(msg);
			});
	$("#meses24").on(
			"blur",
			function() {
				showMeses24Msg(msg);
			});
	$("#desc").on("blur", function() {
		showDescMsg(msg);
	});
}

function showCategoryMsg(msg){
	var category = $("#choose_category").val();
	var locale = $("#locale").val();
	if(locale == 'zh_CN'){
		if(category == "选择类别" || category == null){
			$("#categoryMsg").css("display","block");
			$("#categoryMsg font").html("必须选择一项类别！");
		}else{
			$("#categoryMsg").css("display","none");
		}
	} else {
		if(category == "Select Category" || category == null){
			$("#categoryMsg").css("display","block");
			$("#categoryMsg font").html("Need to select a category！");
		}else{
			$("#categoryMsg").css("display","none");
		}
	}
}
function showNameMsg(msg){
	var name = $("#name").val();
	if (name == null || name == "") {
		$("#nameMsg").css("display", "block");
		$("#nameMsg font").html(msg['product_not_null']);
	} else {
		$("#nameMsg").css("display", "none");
	}
}
function showNameEnMsg(msg){
	var name = $("#nameEn").val();
	if (name == null || name == "") {
		$("#nameEnMsg").css("display", "block");
		$("#nameEnMsg font").html(msg['product_not_null']);
	} else {
		$("#nameEnMsg").css("display", "none");
	}
}
function showPriceMsg(msg){
    var reg = /^[1-9]+(\.\d{1,2})?$/;
	var price = $("#price").val();
	if (price == null || price == "") {
		$("#priceMsg").css("display", "block");
		$("#priceMsg font").html(msg['price_not_null']);
	}else {
		if (!reg.test(price)) {
			$("#priceMsg").css("display", "block");
			$("#priceMsg font").html(msg['price_rule']);
		}else {
			$("#priceMsg").css("display", "none");
		}
	}
}

function showQuarterMsg(msg){
	var quarter = $("#quarter").val();
	if (quarter == null || quarter == "") {
		$("#quarterMsg").css("display", "block");
		$("#quarterMsg font").html(msg['quarter_not_null']);
	} else {
		$("#quarterMsg").css("display", "none");
	}
	
}

function showNumMsg(msg){
	var $num = $("#num").val();
	if ($num == null || $num == "") {
		$("#numMsg").css("display", "block");
		$("#numMsg font").html(msg['num_not_null']);
	} else {
		$("#numMsg").css("display", "none");
	}
	if ($num != null && $num != "") {
		if (!numReg.test($num)) {
			$("#numMsg").css("display", "block");
			$("#numMsg font").html(msg['num_must_num']);
		} else {
			$("#numMsg").css("display", "none");
		}
	}
}
function showMeses06Msg(msg){
	var meses06 = $("#meses06").val();
	if (meses06 == null || meses06 == "") {
		$("#meses06Msg").css("display", "block");
		$("#meses06Msg font").html(msg['size_06_not_null']);
	} else {
		$("#meses06Msg").css("display", "none");
	}
	if (meses06 != null && meses06 != "") {
		if (!numReg.test(meses06)) {
			$("#meses06Msg").css("display", "block");
			$("#meses06Msg font").html(msg['size_06_num']);
		} else {
			$("#meses06Msg").css("display", "none");
		}
	}
}
function showMeses09Msg(msg){
	var meses09 = $("#meses09").val();
	if (meses09 == null || meses09 == "") {
		$("#meses09Msg").css("display", "block");
		$("#meses09Msg font").html(msg['size_09_not_null']);
	} else {
		$("#meses09Msg").css("display", "none");
	}
	if (meses09 != null && meses09 != "") {
		if (!numReg.test(meses09)) {
			$("#meses09Msg").css("display", "block");
			$("#meses09Msg font").html(msg['size_09_num']);
		} else {
			$("#meses09Msg").css("display", "none");
		}
	}
}
function showMeses12Msg(msg){
	var meses12 = $("#meses12").val();
	if (meses12 == null || meses12 == "") {
		$("#meses12Msg").css("display", "block");
		$("#meses12Msg font").html(msg['size_12_not_null']);
	} else {
		$("#meses12Msg").css("display", "none");
	}
	if (meses12 != null && meses12 != "") {
		if (!numReg.test(meses12)) {
			$("#meses12Msg").css("display", "block");
			$("#meses12Msg font").html(msg['size_12_num']);
		} else {
			$("#meses12Msg").css("display", "none");
		}
	}
}
function showMeses18Msg(){
	var meses18 = $("#meses18").val();
	if (meses18 == null || meses18 == "") {
		$("#meses18Msg").css("display", "block");
		$("#meses18Msg font").html(msg['size_18_not_null']);
	} else {
		$("#meses18Msg").css("display", "none");
	}
	if (meses18 != null && meses18 != "") {
		if (!numReg.test(meses18)) {
			$("#meses18Msg").css("display", "block");
			$("#meses18Msg font").html(msg['size_18_num']);
		} else {
			$("#meses18Msg").css("display", "none");
		}
	}
}
function showMeses24Msg(){
	var meses24 = $("#meses24").val();
	if (meses24 == null || meses24 == "") {
		$("#meses24Msg").css("display", "block");
		$("#meses24Msg font").html(msg['size_24_not_null']);
	} else {
		$("#meses24Msg").css("display", "none");
	}
	if (meses24 != null && meses24 != "") {
		if (!numReg.test(meses24)) {
			$("#meses24Msg").css("display", "block");
			$("#meses24Msg font").html(msg['size_24_num']);
		} else {
			$("#meses24Msg").css("display", "none");
		}
	}
}
function showDescMsg(msg){
	var desc = $("#desc").val();
	if (desc == null || desc == "") {
		$("#descMsg").css("display", "block");
	} else {
		$("#descMsg").css("display", "none");
	}
}
function checkForm(msg) {
	showCategoryMsg(msg);
	showNameMsg(msg);
	showNameEnMsg(msg);
	showPriceMsg(msg);
	showNumMsg(msg);
	showMeses06Msg(msg);
	showMeses09Msg(msg);
	showMeses12Msg(msg);
	showMeses18Msg(msg);
	showMeses24Msg(msg);
	showDescMsg(msg);
	//验证图片
	var length = $(".files tr").length;
	var l = $(".jcarousel ul li").length;
	if(length == 0 && l == 0){
		$("#filesMsg").css("display","block");
		return false;
	}else{
		$("#filesMsg").css("display","none");
	}
	// 验证库存总和
	var num = $("#num").val();
	var meses06 = $("#meses06").val();
	var meses09 = $("#meses09").val();
	var meses12 = $("#meses12").val();
	var meses18 = $("#meses18").val();
	var meses24 = $("#meses24").val();
	var desc = $("#desc").val();
	var name = $("#name").val();
	var nameEn = $("#nameEn").val();
	var price = $("#price").val();
	var category = $("#choose_category").val();
	if(meses06 == "" && meses09 == "" && meses12 == "" && meses18 == "" && meses24 == "" ){
		return false;
	}
	var total = eval(meses06 + "+" + meses09 + "+" + meses12 + "+" + meses18
			+ "+" + meses24);
	if (total != num) {
		$("#meses24Msg").css("display", "block");
		$("#meses24Msg font").html(msg['size_num_not_same_num']);
		return false;
	} else {
		$("#meses24Msg").css("display", "none");

		var nameMsg = $("#nameMsg").css("display");
		var nameEnMsg = $("#nameEnMsg").css("display");
		var priceMsg = $("#priceMsg").css("display");
		var numMsg = $("#numMsg").css("display");
		var meseso6Msg = $("#meses06Msg").css("display");
		var meses12Msg = $("#meses12Msg").css("display");
		var meses18Msg = $("#meses18Msg").css("display");
		var meses24Msg = $("#meses24Msg").css("display");
		var descMsg = $("#descMsg").css("display");
		var categoryMsg = $("#categoryMsg").css("display");
		if ( categoryMsg == "none" && nameMsg == "none" && nameEnMsg == "none" && priceMsg == "none" && numMsg == "none"
				&& meseso6Msg == "none" && meses12Msg == "none"
				&& meses18Msg == "none" && meses24Msg == "none"
				&& descMsg == "none") {
			if (category != null && category != "选择类别" && category != "Select Category" && name != "" && price != "" && num != "" && meses24 != ""
					&& meses18 != "" && meses12 != "" && meses09 != ""
					&& meses06 != "" && desc != "")
				return true;
		}
		return false;
	}
}
function saveProduct() {
	// alert($("#product_add").submit());
	var flag = checkForm(msg);
	if(flag == false){
		return;
	}
	var cateId = $("#choose_category").val();// 123:1,245:2
	var name = $("#name").val();
	var nameEn = $("#nameEn").val();
	var price = $("#price").val();
	var num = $("#num").val();
	var meses06 = $("#meses06").val();
	var meses09 = $("#meses09").val();
	var meses12 = $("#meses12").val();
	var meses18 = $("#meses18").val();
	var meses24 = $("#meses24").val();
	var desc = $("#desc").val();
//	var isNew = $("#isNew").val() == 'on' ? true : false;
	var pics = $("#pics").val();
	$("#files").children().each(function(i, tr) {
		// pics[i] = $(tr).find("p").html();
		pics += $(tr).find("p").html() + ",";
	});
	var d = {
		"categoryId" : tostring(cateId),
		// "categoryName" : $("#cateName").val(),
		"name" : name,
		"nameEn" : nameEn,
		"price" : price,
		"num" : num,
		"meses06" : meses06,
		"meses09" : meses09,
		"meses12" : meses12,
		"meses18" : meses18,
		"meses24" : meses24,
		"description" : desc,
//		"isNew" : isNew,
		"pics" : pics
	};
	var id = $("#productId").val();
	if (id) {
		d["id"] = id;
	}
	$.post("product/save", d, function(data) {
		if (data.head.rep_code == '200') {
			location.href = "products";
		}
	});
}

function selectCate(id, name) {
	$("#cateId").val(id);
	$("#cateName").val(name);
	$("#catLabel").html(name);
}

function tostring(json) {
	return JSON.stringify(json);
}