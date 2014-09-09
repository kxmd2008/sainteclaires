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
<%-- <link href="<%=path%>/common/bootstrap.css" rel="stylesheet" --%>
<!-- 	type="text/css" /> -->
<%-- <link href="<%=path%>/common/bootstrap.responsive.css" rel="stylesheet" --%>
<!-- 	type="text/css" /> -->

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
.box {
	position: absolute;
	top: 100%;
	/*   left: 0; */
	z-index: 1000;
/* 	display: block; */
	float: right;
	min-width: 160px;
	padding: 5px;
	margin: 2px 0 0;
	font-size: 14px;
	text-align: left;
	list-style: none;
	background-color: #fff;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 3px solid #ccc;
	border: 3px solid rgba(0, 0, 0, .15);
	border-radius: 4px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 12px 12px rgba(0, 0, 0, .175);
}

#show_tooltip:hover .dropdown-menu {
	display: block;
}
.icon-close:before{
	content: "";
}
.icon-close:before{
	content: "";
}
.fontSize{
	font-size: 12px;
	color:#838383;
	font-weight: bold;
}
.center{
	margin-left: auto !important;
	margin-right: auto !important;
	float:none !important;
	display: block;
	text-align:center;
}
.list-inline > div {
  display: inline-block;
  padding-right: 0px;
  padding-left: 5px;
}
.box{
	width:23%;
	border :2px dashed #C2C8CF;
	line-height: 2;
	vertical-align: top;
	margin:1%;
	min-height:124px;
}
.list-inline  div:hover{  
    box-shadow: 6px 6px 6px rgba(0,0,0,0.2);  
    opacity: 0.9;
} 
/* .dropdown-menu { */
/* 	padding: 10px 0; */
/* 	margin: 10px 0 0; */
/* 	border: 1px solid #ccc; */
/* 	 border: 1px solid rgba(0, 0, 0, .15);  */
/* 	 border-radius: 4px;  */
/* 	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175); */
/* 	box-shadow: 0 6px 12px rgba(0, 0, 0, .175); */
/* } */
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<!-- 	<img src="images/Desert.jpg" class="stretch" id="bodyBgImg"> -->
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp"/>
<!-- 			<div class="cl-mcont aside" style="display:block;"> -->
<!-- 			</div> -->
			<div class="col-md-12" >
		<div class="col-md-9 center">
			<div class="col-md-12" style="margin-top:20px;height:80px;">
				<img src="<%=basePath%>/common/image/logo_txt.png" class="pull-left"/>
			</div>
			<div class="col-md-12" style="height:20px;">
				<div class="pull-left fontSize" >查看订单信息</div>
			</div>
			<div class="col-md-12" style="min-height:160px;height:100%;">
				<hr style="width:100%;border:1px solid #F0F0F0;margin-bottom:0px;margin-top:5px;" />
				<table class="table table-hover fontSize" style="font-weight:normal;margin-bottom:40px;">
					<thead>
						<tr>
							<td>商品</td>
							<td>属性</td>
							<td>单价</td>
							<td>数量</td>
							<td>小计</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<ul class="list-unstyled list-inline" style="vertical-align: middle;margin-bottom:0px;">
									<li><img src="<%=basePath%>/common/image/qunzi.jpg"/></li>
									<li><label class="fontSize" style="vertical-align: middle;font-weight: normal;">儿童连体裙</label></li>
								</ul>
							</td>
							<td style="vertical-align: middle">
								<ul class="list-unstyled" style="vertical-align: middle;margin-bottom:0px;">
									<li>颜色分类：红色</li>
									<li>尺码：M</li>
								</ul>
							</td>
							<td style="vertical-align: middle">125.00</td>
							<td style="vertical-align: middle" class="">1
							</td>
							<td style="vertical-align: middle"><font color="red">125.00</font></td>
							<td style="vertical-align: middle"><button type="button" class="btn btn-default" >确认收货</button></td>
						</tr>
						<tr>
							<td>
								<ul class="list-unstyled list-inline" style="vertical-align: middle;margin-bottom:0px;">
									<li><img src="<%=basePath%>/common/image/qunzi.jpg"/></li>
									<li><label class="fontSize" style="vertical-align: middle;font-weight: normal;">儿童连体裙</label></li>
								</ul>
							</td>
							<td style="vertical-align: middle">
								<ul class="list-unstyled" style="vertical-align: middle;margin-bottom:0px;">
									<li>颜色分类：红色</li>
									<li>尺码：M</li>
								</ul>
							</td>
							<td style="vertical-align: middle">125.00</td>
							<td style="vertical-align: middle" class="">1
							</td>
							<td style="vertical-align: middle"><font color="red">125.00</font></td>
							<td style="vertical-align: middle"><button type="button" class="btn btn-default" >确认收货</button></td>
						</tr>
						<tr>
							<td>
								<ul class="list-unstyled list-inline" style="vertical-align: middle;margin-bottom:0px;">
									<li><img src="<%=basePath%>/common/image/qunzi.jpg"/></li>
									<li><label class="fontSize" style="vertical-align: middle;font-weight: normal;">儿童连体裙</label></li>
								</ul>
							</td>
							<td style="vertical-align: middle">
								<ul class="list-unstyled" style="vertical-align: middle;margin-bottom:0px;">
									<li>颜色分类：红色</li>
									<li>尺码：M</li>
								</ul>
							</td>
							<td style="vertical-align: middle">125.00</td>
							<td style="vertical-align: middle" class="">1
							</td>
							<td style="vertical-align: middle"><font color="red">125.00</font></td>
							<td style="vertical-align: middle"><button type="button" class="btn btn-default" >确认收货</button></td>
						</tr>
						<tr>
							<td>
								<ul class="list-unstyled list-inline" style="vertical-align: middle;margin-bottom:0px;">
									<li><img src="<%=basePath%>/common/image/qunzi.jpg"/></li>
									<li><label class="fontSize" style="vertical-align: middle;font-weight: normal;">儿童连体裙</label></li>
								</ul>
							</td>
							<td style="vertical-align: middle">
								<ul class="list-unstyled" style="vertical-align: middle;margin-bottom:0px;">
									<li>颜色分类：红色</li>
									<li>尺码：M</li>
								</ul>
							</td>
							<td style="vertical-align: middle">125.00</td>
							<td style="vertical-align: middle" class="">1
							</td>
							<td style="vertical-align: middle"><font color="red">125.00</font></td>
							<td style="vertical-align: middle"><button type="button" class="btn btn-default" >确认收货</button></td>
						</tr>
					</tbody>
<!-- 					<tfoot> -->
<!-- 						<td colspan="6" class=""><label class="pull-right fontSize">合计（含运费）：￥125.00</label></td> -->
<!-- 					</tfoot> -->
				</table>
				<hr style="width:100%;border:1px solid #F0F0F0;margin-bottom:0px;margin-top:0px;" />
			</div>
		</div>
	</div>
			<jsp:include page="../footer.jsp"/>
		</div>
	</div>
	

	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
	<script src="<%=basePath%>/js/jPushMenu.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/core.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/common.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=basePath%>/js/common/detail.js"></script>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
	<a href="#" class="back-to-top" style="display: none;"><i
		class="fa fa-angle-up"></i></a>
</body>
</html>