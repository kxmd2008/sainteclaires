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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="<%=basePath%>/common/image/favicon.png">
<title>Sainte Claire</title>
<link href="<%=basePath%>/css/bootstrap/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.gritter.css">
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/nanoscroller.css">
<link href="<%=basePath%>/css/style.css" rel="stylesheet">
<link href="./css/my.css" rel="stylesheet">
<link href="./css/product.css" rel="stylesheet">
<link href="./css/fonts.css" rel="stylesheet">
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
			<div id="head-nav" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-collapse">
						<ul class="nav navbar-nav navbar-right user-nav">
							<li class=""><a href="./index.do">home</a></li>
							<li class=""><a href="./shop.do">shop</a></li>
							<li class=""><a href="#">blog</a></li>
							<li class=""><a href="#">Changes</a></li>
							<li class=""><a href="#">contact</a></li>
							<li class=""><a href="#">Login</a></li>
						</ul>
						<ul class="nav navbar-nav not-nav">
							<div style="margin-left: 20px;"></div>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="cl-mcont aside">
				<div class="page-aside tree">
					<div class="nano nscroller has-scrollbar" style="min-height:75px;">
						<div class="content" tabindex="0" style="right: -17px;">
							<div class="title">
								<img alt="Sainte Claire" title="Sainte Claire" style="z-index: 10"
									src="<%=basePath%>/common/image/logo_txt.png">
							</div>
							<ul class="nav nav-list treeview">
								<c:forEach var="pcat" items="${parents}">
									<li class=""><label class="tree-toggler nav-header">${pcat.name }</label>
										<ul class="nav nav-list tree" style="display: none;">
											<c:forEach var="subcat" items="${subcatMap[pcat.id]}">
												<li><a href="./products.do?subCateId=${subcat.id }">${subcat.name }</a></li>
											</c:forEach>
										</ul>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div class="pane" style="display: none;">
							<div class="slider" style="height: 1117px; top: 0px;"></div>
						</div>
					</div>
				</div>
				<div class="content">
					<div class="row">
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
<%-- 	<script src="<%=basePath%>/js/jPushMenu.js"></script> --%>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
<%-- 	<script type="text/javascript" src="<%=basePath%>/js/jquery.sparkline.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=basePath%>/js/jquery-ui.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=basePath%>/js/jquery.gritter.js"></script> --%>
	<script type="text/javascript" src="<%=basePath%>/js/common.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="./js/bgstretcher.js"></script>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		var imgs = [ "product/imgs/DSC5545.jpg", "product/imgs/DSC7339.jpg",
			 			"product/imgs/DSC8158.jpg"];
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
	<a href="#" class="back-to-top" style="display: none;"><i
		class="fa fa-angle-up"></i></a>
</body>
</html>