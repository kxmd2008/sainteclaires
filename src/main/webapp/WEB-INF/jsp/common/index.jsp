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
<link rel="shortcut icon" href="<%=basePath%>/common/image/icon.png">
<title>Flat Dream</title>
<link href="<%=basePath%>/css/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/jquery.gritter.css">
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/nanoscroller.css">
<link href="<%=basePath%>/css/style.css" rel="stylesheet">
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

body {
	position: absolute;
	background-repeat: no-repeat;
	left: 0px; top : 0px;
	z-index: 0;
	background-size: cover;
	top: 0px;
}

.strange {
	position: absolute;
	background-repeat: no-repeat;
	left: 0px; top : 0px;
	z-index: 0;
	background-size: cover;
	top: 0px;
}

.alert {
	filter: alpha(opacity = 0); /* IE */
	-moz-opacity: 0.0; /* Moz + FF */
	opacity: 1.0;
	background: #ccc;
	position: absolute;
	z-index: 99;
	text-align: center;
}
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
<!-- 	<img src="images/Desert.jpg" class="stretch" id="bodyBgImg"> -->
	<div id="cl-wrapper" class="strange" style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<div id="head-nav" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-collapse">
						<ul class="nav navbar-nav navbar-right user-nav">
							<li class="dropdown profile_menu"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown"><span>Jane
										Smith</span> <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">My Account</a></li>
									<li><a href="#">Profile</a></li>
									<li><a href="#">Messages</a></li>
									<li class="divider"></li>
									<li><a href="#">Sign Out</a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav not-nav">
							<div style="margin-left:20px;"></div>
							<li class="button dropdown"><a href="javascript:;">
								<img src="<%=basePath%>/common/image/icon_weibo_24.png"></a>
							</li>
							<li class="button dropdown"><a href="javascript:;">
								<img src="<%=basePath%>/common/image/icon_weibo_24.png"></a>
							</li>
							<li class="button dropdown"><a href="javascript:;">
								<img src="<%=basePath%>/common/image/icon_weibo_24.png"></a>
							</li>
							<li class="button dropdown"><a href="javascript:;">
								<img src="<%=basePath%>/common/image/icon_weibo_24.png"></a>
							</li>
						</ul>

					</div>
				</div>
			</div>

			<div class="cl-mcont aside">
				<div class="page-aside tree">
					<div class="nano nscroller has-scrollbar">
						<div class="content" tabindex="0" style="right: -17px;">
							<div class="title">
								<img alt="Sainte Claire" title="Sainte Claire" src="<%=basePath%>/common/image/logo_txt.png">
							</div>
							<ul class="nav nav-list treeview">
								<li class="open"><label class="tree-toggler nav-header">
										General</label>
									<ul class="nav nav-list tree" style="display: block;">
										<li><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
										<li><label class="tree-toggler nav-header"><i
												class="fa fa-folder-o"></i> Structure</label>
											<ul class="nav nav-list tree">
												<li><a href="#">Link</a></li>
												<li><a href="#">Link</a></li>
												<li><label class="tree-toggler nav-header"><i
														class="fa fa-folder-o"></i> Plugins</label>
													<ul class="nav nav-list tree">
														<li><a href="#">Link</a></li>
														<li><a href="#">Link</a></li>
													</ul></li>
											</ul></li>
									</ul></li>
									<li class="open"><label class="tree-toggler nav-header">
										General</label>
									<ul class="nav nav-list tree" style="display: block;">
										<li><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
										<li><label class="tree-toggler nav-header"><i
												class="fa fa-folder-o"></i> Structure</label>
											<ul class="nav nav-list tree">
												<li><a href="#">Link</a></li>
												<li><a href="#">Link</a></li>
												<li><label class="tree-toggler nav-header"><i
														class="fa fa-folder-o"></i> Plugins</label>
													<ul class="nav nav-list tree">
														<li><a href="#">Link</a></li>
														<li><a href="#">Link</a></li>
													</ul></li>
											</ul></li>
									</ul></li>
									<li class="open"><label class="tree-toggler nav-header">
										General</label>
									<ul class="nav nav-list tree" style="display: block;">
										<li><a href="#">Link</a></li>
										<li><a href="#">Link</a></li>
										<li><label class="tree-toggler nav-header"><i
												class="fa fa-folder-o"></i> Structure</label>
											<ul class="nav nav-list tree">
												<li><a href="#">Link</a></li>
												<li><a href="#">Link</a></li>
												<li><label class="tree-toggler nav-header"><i
														class="fa fa-folder-o"></i> Plugins</label>
													<ul class="nav nav-list tree">
														<li><a href="#">Link</a></li>
														<li><a href="#">Link</a></li>
													</ul></li>
											</ul></li>
									</ul></li>
							</ul>
						</div>
						<div class="pane" style="display: none;">
							<div class="slider" style="height: 1117px; top: 0px;"></div>
						</div>
					</div>
				</div>
				<div class="content">
					<h3 class="text-center">Content goes here!</h3>
				</div>
			</div>
		</div>
	</div>
<script src="<%=basePath%>/js/jquery.js"></script>
<script src="<%=basePath%>/js/jquery.cookie.js"></script>
<script src="<%=basePath%>/js/jPushMenu.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.gritter.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/core.js"></script>
<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>

<script  type="text/javascript">
//    var link = $('link[href="css/style.css"]');
//    if($.cookie("css")) {
//      link.attr("href",'css/skin-' + $.cookie("css") + '.css');
//    }
 </script> <script  type="text/javascript">
   $(document).ready(function(){
	   $('label.tree-toggler').click(function () {
	       var icon = $(this).children(".fa");
	         if(icon.hasClass("fa-folder-o")){
	           icon.removeClass("fa-folder-o").addClass("fa-folder-open-o");
	         }else{
	           icon.removeClass("fa-folder-open-o").addClass("fa-folder-o");
	         }        
	         
	       $(this).parent().children('ul.tree').toggle(300,function(){
	         $(this).parent().toggleClass("open");
	         $(".tree .nscroller").nanoScroller({ preventPageScrolling: true });
	       });
	     });
     setInterval("intervalChangeImg()",2000);
   });
   
	var imgs = [ "images/Chrysanthemum.jpg", "images/Desert.jpg",
			"images/Hydrangeas.jpg", "images/Jellyfish.jpg",
			"images/Koala.jpg", "images/Lighthouse.jpg",
			"images/Penguins.jpg", "images/Tulips.jpg" ];
	var index = 0;
	function intervalChangeImg() {
// 		$("#bodyBgImg").attr("src", imgs[index]);
// 		$("body").css('background-image', 'url('+imgs[index]+')')
		$("#cl-wrapper").css("background-image", 'url('+imgs[index]+')');
		if (index == imgs.length - 1) {
			index = 0;
		} else {
			index++;
		}
	}
	//    $(function() {
	// 		$("body").css('background-image', 'url(images/Desert.jpg)').addClass("bodybg");
	// 	});
</script>

<%-- 	<script type="text/javascript" src="<%=basePath%>/js/jquery.flot.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=basePath%>/js/jquery.flot.pie.js"></script> --%>
<!-- 	<script type="text/javascript" -->
<%-- 		src="<%=basePath%>/js/jquery.flot.resize.js"></script> --%>
<!-- 	<script type="text/javascript" -->
<%-- 		src="<%=basePath%>/js/jquery.flot.labels.js"></script> --%>
	<a href="#" class="back-to-top" style="display: none;"><i
		class="fa fa-angle-up"></i></a>
</body>
</html>