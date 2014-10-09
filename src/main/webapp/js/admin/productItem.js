$(document).ready(function() {
	var locale = $("#locale").val();
	if(locale == 'zh_CN'){
		$('#choose_category').multiselect({
			maxHeight : 280,
			buttonWidth : '220px',
			nonSelectedText : '选择类别'
		});
	}else{
		$('#choose_category').multiselect({
			maxHeight : 280,
			buttonWidth : '220px',
			nonSelectedText : 'Select Category'
		});
	}
	validatorProduct();
});
var URL = "/";
var numReg = /^\d+$/;
function validatorProduct() {
	var numReg = /^\d+$/;
	$("#choose_category").change(function(){
		showCategoryMsg();
	});
	$("#name").on("blur", function() {
		showNameMsg();
	});
	$("#price").on("blur", function() {
		showPriceMsg();
	});
	$("#num").on("blur", function() {
		showNumMsg();
	});
	$("#meses06").on(
			"blur",
			function() {
				showMeses06Msg();
			});
	$("#meses09").on(
			"blur",
			function() {
				showMeses09Msg();
			});
	$("#meses12").on(
			"blur",
			function() {
				showMeses12Msg();
			});
	$("#meses18").on(
			"blur",
			function() {
				showMeses18Msg();
			});
	$("#meses24").on(
			"blur",
			function() {
				showMeses24Msg();
			});
	$("#desc").on("blur", function() {
		showDescMsg();
	});
}

function showCategoryMsg(){
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
function showNameMsg(){
	var name = $("#name").val();
	if (name == null || name == "") {
		$("#nameMsg").css("display", "block");
		$("#nameMsg font").html("产品名称不能为空！");
	} else {
		$("#nameMsg").css("display", "none");
	}
}
function showPriceMsg(){
    var reg = /^[1-9]+(\.\d{1,1})?$/;
	var price = $("#price").val();
	if (price == null || price == "") {
		$("#priceMsg").css("display", "block");
		$("#priceMsg font").html("产品价格不能为空！");
	}else {
		if (!reg.test(price)) {
			$("#priceMsg").css("display", "block");
			$("#priceMsg font").html("产品价格只能为1以上正整数或者1位浮点型数！");
		}else {
			$("#priceMsg").css("display", "none");
		}
	}
}
function showNumMsg(){
	var $num = $("#num").val();
	if ($num == null || $num == "") {
		$("#numMsg").css("display", "block");
		$("#numMsg font").html("产品数量不能为空！");
	} else {
		$("#numMsg").css("display", "none");
	}
	if ($num != null && $num != "") {
		if (!numReg.test($num)) {
			$("#numMsg").css("display", "block");
			$("#numMsg font").html("库存数量只能输入数字！");
		} else {
			$("#numMsg").css("display", "none");
		}
	}
}
function showMeses06Msg(){
	var meses06 = $("#meses06").val();
	if (meses06 == null || meses06 == "") {
		$("#meses06Msg").css("display", "block");
		$("#meses06Msg font").html("06尺码库存数量不能为空！");
	} else {
		$("#meses06Msg").css("display", "none");
	}
	if (meses06 != null && meses06 != "") {
		if (!numReg.test(meses06)) {
			$("#meses06Msg").css("display", "block");
			$("#meses06Msg font").html("06尺码库存数量只能输入数字！");
		} else {
			$("#meses06Msg").css("display", "none");
		}
	}
}
function showMeses09Msg(){
	var meses09 = $("#meses09").val();
	if (meses09 == null || meses09 == "") {
		$("#meses09Msg").css("display", "block");
		$("#meses09Msg font").html("09尺码库存数量不能为空！");
	} else {
		$("#meses09Msg").css("display", "none");
	}
	if (meses09 != null && meses09 != "") {
		if (!numReg.test(meses09)) {
			$("#meses09Msg").css("display", "block");
			$("#meses09Msg font").html("09尺码库存数量只能输入数字！");
		} else {
			$("#meses09Msg").css("display", "none");
		}
	}
}
function showMeses12Msg(){
	var meses12 = $("#meses12").val();
	if (meses12 == null || meses12 == "") {
		$("#meses12Msg").css("display", "block");
		$("#meses12Msg font").html("12尺码库存数量不能为空！");
	} else {
		$("#meses12Msg").css("display", "none");
	}
	if (meses12 != null && meses12 != "") {
		if (!numReg.test(meses12)) {
			$("#meses12Msg").css("display", "block");
			$("#meses12Msg font").html("09尺码库存数量只能输入数字！");
		} else {
			$("#meses12Msg").css("display", "none");
		}
	}
}
function showMeses18Msg(){
	var meses18 = $("#meses18").val();
	if (meses18 == null || meses18 == "") {
		$("#meses18Msg").css("display", "block");
		$("#meses18Msg font").html("18尺码库存数量不能为空！");
	} else {
		$("#meses18Msg").css("display", "none");
	}
	if (meses18 != null && meses18 != "") {
		if (!numReg.test(meses18)) {
			$("#meses18Msg").css("display", "block");
			$("#meses18Msg font").html("09尺码库存数量只能输入数字！");
		} else {
			$("#meses18Msg").css("display", "none");
		}
	}
}
function showMeses24Msg(){
	var meses24 = $("#meses24").val();
	if (meses24 == null || meses24 == "") {
		$("#meses24Msg").css("display", "block");
		$("#meses24Msg font").html("24尺码库存数量不能为空！");
	} else {
		$("#meses24Msg").css("display", "none");
	}
	if (meses24 != null && meses24 != "") {
		if (!numReg.test(meses24)) {
			$("#meses24Msg").css("display", "block");
			$("#meses24Msg font").html("09尺码库存数量只能输入数字！");
		} else {
			$("#meses24Msg").css("display", "none");
		}
	}
}
function showDescMsg(){
	var desc = $("#desc").val();
	if (desc == null || desc == "") {
		$("#descMsg").css("display", "block");
	} else {
		$("#descMsg").css("display", "none");
	}
}
function checkForm() {
	showCategoryMsg();
	showNameMsg();
	showNumMsg();
	showPriceMsg();
	showMeses06Msg();
	showMeses09Msg();
	showMeses12Msg();
	showMeses18Msg();
	showMeses24Msg();
	showDescMsg();
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
	var price = $("#price").val();
	var category = $("#choose_category").val();
	if(meses06 == "" && meses09 == "" && meses12 == "" && meses18 == "" && meses24 == "" ){
		return false;
	}
	var total = eval(meses06 + "+" + meses09 + "+" + meses12 + "+" + meses18
			+ "+" + meses24);
	if (total != num) {
		$("#meses24Msg").css("display", "block");
		$("#meses24Msg font").html("产品尺码数量总和与产品库存数量不符！");
		return false;
	} else {
		$("#meses24Msg").css("display", "none");

		var nameMsg = $("#nameMsg").css("display");
		var priceMsg = $("#priceMsg").css("display");
		var numMsg = $("#numMsg").css("display");
		var meseso6Msg = $("#meses06Msg").css("display");
		var meses12Msg = $("#meses12Msg").css("display");
		var meses18Msg = $("#meses18Msg").css("display");
		var meses24Msg = $("#meses24Msg").css("display");
		var descMsg = $("#descMsg").css("display");
		var categoryMsg = $("#categoryMsg").css("display");
		if ( categoryMsg == "none" && nameMsg == "none" && priceMsg == "none" && numMsg == "none"
				&& meseso6Msg == "none" && meses12Msg == "none"
				&& meses18Msg == "none" && meses24Msg == "none"
				&& descMsg == "none") {
			if (category != null && category != "选择类别" && name != "" && price != "" && num != "" && meses24 != ""
					&& meses18 != "" && meses12 != "" && meses09 != ""
					&& meses06 != "" && desc != "")
				return true;
		}
		return false;
	}
}
function saveProduct() {
	// alert($("#product_add").submit());
	var flag = checkForm();
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