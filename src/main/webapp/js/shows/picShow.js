var key_name = "kname";
var key_email = "kemail";

function ilovepic(picId) {
	var love = Number($("#love" + picId).html());
	$("#love" + picId).html(love + 1);
	$.post("../love", {
		"id" : picId
	}, function(msg) {
		if (msg.head.rep_code == 200) {

		}
	});
}

function detailtilovepic(picId) {
	var love = Number($("#love" + picId).html());
	$("#love" + picId).html(love + 1);
	$.post("show/love", {
		"id" : picId
	}, function(msg) {
		if (msg.head.rep_code == 200) {

		}
	});
}

function reply(name, parentId) {
	$("#replyDiv").css("display", "block");
	$("#replyOne").html(name);
	$("#parentId").val(parentId);
}

function submitComment() {
	var author = $("#author").val();
	var email = $("#email").val();
	var comment = $("#comment").val();
	var picShowId = $("#picShowId").val();
	var parentId = $("#parentId").val();
	var d = {
		"parentId" : parentId,
		"name" : author,
		"email" : email,
		"picId" : picShowId,
		"comment" : comment
	};
	$.post("../comment", d, function(msg) {
		if (msg.head.rep_code == 200) {
			$("#replyDiv").css("display", "none");
			addCookie(key_name, author);
			addCookie(key_email, email);
			$("#comment").val("");
			$("#parentId").val("");
			toReadOnly();
		}
	});
}

function addCookie(objName, objValue) {// 添加cookie
	var str = objName + "=" + escape(objValue);
	document.cookie = str;
}

function getCookie(key) {
	if (document.cookie.length > 0) {
		var c_start = document.cookie.indexOf(key + "=");
		if (c_start != -1) {
			c_start = c_start + key.length + 1;
			var c_end = document.cookie.indexOf(";", c_start);
			if (c_end == -1)
				c_end = document.cookie.length;
			return unescape(document.cookie.substring(c_start, c_end));
		}
	}
	return "";
}

function checkCookie(){
	var name = getCookie(key_name);
	var email = getCookie(key_email);
	if(name != "" && email != ""){
		$("#author").val(name);
		$("#email").val(email);
		toReadOnly();
	}
}

function toReadOnly(){
	$("#author").attr("disabled", "disabled");
	$("#email").attr("disabled", "disabled");
}

function getBasePath() {
	var obj = window.location;
	var contextPath = obj.pathname.split("/")[1];
	var basePath = obj.protocol + "//" + obj.host + "/" + contextPath;
	return basePath;
}