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
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" style="opacity: 1; margin-left: 0px;">
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
							<li class="button dropdown"><a href="javascript:;"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class=" fa fa-inbox"></i></a></li>
							<li class="button dropdown"><a href="javascript:;"
								class="dropdown-toggle" data-toggle="dropdown"><i
									class="fa fa-globe"></i><span class="bubble">2</span></a></li>
							<li class="button"><a class="dropdown-toggle"
								href="javascript:;"><i class="fa fa-comments"></i></a></li>
						</ul>

					</div>
				</div>
			</div>


			<div class="cl-mcont aside">
				<div class="page-aside tree">
					<div class="nano nscroller has-scrollbar">
						<div class="content" tabindex="0" style="right: -17px;">
							<div class="title">
								<h2>Tree View</h2>
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
   var link = $('link[href="css/style.css"]');
   if($.cookie("css")) {
     link.attr("href",'css/skin-' + $.cookie("css") + '.css');
   }
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

   });
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