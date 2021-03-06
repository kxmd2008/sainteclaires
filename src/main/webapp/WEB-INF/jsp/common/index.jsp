<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../head.jsp"/>
<link href="./css/bgstretcher.css" rel="stylesheet">

<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
.bgStretcher-container .bgstretcher-area .bgstretcher-page .container-fluid{
	height:66px;
}
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid pull-right" id="pcont" style="margin-right:18px;margin-left:0px;display:block;">
			<jsp:include page="../header.jsp"/>
			<div class="cl-mcont aside">
			<jsp:include page="../left2.jsp"/>
				<div class="content">
					<div class="row">
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="bgPic" value="${bgs }">
	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/common.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="./js/bgstretcher.js"></script>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
// 		var imgs = [ "product/imgs/DSC5545.jpg", "product/imgs/DSC7339.jpg",
// 			 			"product/imgs/DSC8158.jpg"];
		var imgs = $("#bgPic").val().split(",");
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(function(){
			treeToggler();
			$('#cl-wrapper').bgStretcher({
				images: imgs,
// 				imageWidth: 800, 
				imageHeight: "100%", 
				slideDirection: 'N',
				slideShowSpeed: 3000,
				nextSlideDelay : 6000,
				transitionEffect: 'fade',
				sequenceMode: 'normal',
			});
		});
// 		function intervalChangeImg() {
// //	 		$("#bodyBgImg").attr("src", imgs[index]);
// //	 		$("body").css('background-image', 'url('+imgs[index]+')')
// 			$("#cl-wrapper").css("background-image", 'url('+imgs[index]+')');
// 			jQuery('.hover').stop().animate({opacity: '1'},1000);
// 			if (index == imgs.length - 1) {
// 				index = 0;
// 			} else {
// 				index++;
// 			}
// 		}
	</script>
</body>
</html>