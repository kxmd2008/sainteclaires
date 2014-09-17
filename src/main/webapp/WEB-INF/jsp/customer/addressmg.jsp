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
<jsp:include page="../head.jsp" />
<style type="text/css">
td {
	vertical-align: middle;
}

.icon-close:before {
	content: "";
}

.fontSize {
	font-size: 12px;
	color: #838383;
	font-weight: bold;
}

.icon-close:before {
	content: "";
}

.detailFont {
	font-size: 12px;
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
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp" />
			<div class="cl-mcont aside" >
				<jsp:include page="../profile.jsp" />
				<div class="content" style="min-height:200px;">
					<div class="row">
						<div class="block-flat" style="margin-top:0px;">
							<div class="col-md-12" style="margin-top:10px;min-height:140px;height:100%;padding:0px;">
							<div class="list-inline pull-left col-md-12" id="address_box" style="padding:0px;">
								<div class="pull-left box " style="min-height:140px;">
									<ul class="list-unstyled" style="padding:8px;margin-bottom:0px;padding-bottom:0px;">
										<li style="text-align:left;font-size:10px;">李凤超(收)</li>
										<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
										<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号</li>
										<li style="text-align:left;font-size:10px;">18602131588</li>
										<li style="text-align:left;font-size:10px;">201412</li>
									</ul>
									<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;" class="pull-right">
										<label class="fontSize  center" style="font-size:8px;font-weight: normal;"><font color='white'>默认地址</font></label>
									</div>
								</div>
								<div class="pull-left box" style="min-height:140px;">
									<ul class="list-unstyled" style="padding:8px;margin-bottom:0px;padding-bottom:0px;">
										<li style="text-align:left;font-size:10px;">辽宁大连(李凤超  收)</li>
										<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
										<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号</li>
										<li style="text-align:left;font-size:10px;">电话：18602131588</li>
										<li style="text-align:left;font-size:10px;">邮编：201412</li>
									</ul>
									<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;display:none;" class="pull-right">
										<label class="fontSize  center" style="font-size:8px;font-weight: normal;"><font color='white'>默认地址</font></label>
									</div>
								</div>
								<div class="pull-left box" style="min-height:140px;">
									<ul class="list-unstyled" style="padding:8px;margin-bottom:0px;padding-bottom:0px;">
										<li style="text-align:left;font-size:10px;">辽宁大连(李凤超  收)</li>
										<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
										<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号</li>
										<li style="text-align:left;font-size:10px;">电话：18602131588</li>
										<li style="text-align:left;font-size:10px;">邮编：201412</li>
									</ul>
									<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;display:none;" class="pull-right">
										<label class="fontSize  center" style="font-size:8px;font-weight: normal;"><font color='white'>默认地址</font></label>
									</div>
								</div>
								<div class="pull-left box" style="min-height:140px;">
									<ul class="list-unstyled" style="padding:8px;margin-bottom:0px;padding-bottom:0px;">
										<li style="text-align:left;font-size:10px;">辽宁大连(李凤超  收)</li>
										<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
										<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号</li>
										<li style="text-align:left;font-size:10px;">电话：18602131588</li>
										<li style="text-align:left;font-size:10px;">邮编：201412</li>
									</ul>
									<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;display:none;" class="pull-right">
										<label class="fontSize center" style="font-size:8px;font-weight: normal;"><font color='white'>默认地址</font></label>
									</div>
								</div>
							</div>
						</div>
							<p style="line-height: 2; font-weight: bold;margin-bottom:0px;">新建收货地址</p>
							<div class="col-md-12" style="padding-left:0px;padding-top:0px;">
							<hr class="col-md-5" style="margin-top:10px;padding-right:5px;padding-left:0px;">
							</div>
							<div class="content">
								<div class="cl col-md-5"
									style="padding-left: 0px; padding-right: 0px;">
									<form role="form">
									  <div class="form-group">
									    <label for="username">姓名(必填)</label>
									    <input type="text" class="form-control" id="username" placeholder="请输入姓名">
									  </div>
									  <div class="form-group">
									    <label for="email">电子邮件(必填)</label>
									    <input type="email" class="form-control" id="email" placeholder="请输入电子邮件">
									  </div>
									  <div class="form-group">
									    <label for="telphone">电话(必填)</label>
									    <input type="tel" class="form-control" id="telphone" placeholder="请输入电话号码">
									  </div>
									  <div class="form-group">
									    <label for="address">收货地址(必填)</label>
<!-- 									    <input type="tel" class="form-control" id="address" placeholder="请输入收货地址"> -->
											<textarea rows="3" cols="" class="form-control" id="address" placeholder="请输入收货地址" style="resize: none;"></textarea>
									  </div>
									  <button type="submit" class="btn btn-default col-md-3" style="margin-left:0px;margin-top:10px;">提交</button>
									</form>
								</div>
								<div class="cl col-md-3"
									style="padding-left: 50px; padding-right: 0px;">
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
				</div>
			</div>
			<jsp:include page="../footer.jsp"/>
		</div>
	</div>

	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
	<script src="<%=basePath%>/js/jPushMenu.js"></script>
	<script src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
	<script src="<%=basePath%>/js/jquery.sparkline.min.js"></script>
	<script src="<%=basePath%>/js/jquery-ui.js"></script>
	<script src="<%=basePath%>/js/jquery.gritter.js"></script>
	<script src="<%=basePath%>/js/core.js"></script>
	<script src="<%=basePath%>/js/common.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/js/customer/addresmg.js"></script>

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
</body>
</html>