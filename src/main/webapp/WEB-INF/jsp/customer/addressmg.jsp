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
								<c:forEach items="${addresses }" var="address">
									<div class="pull-left box " style="min-height:158px;">
										<input type="hidden" value="${address.id }" />
										<ul class="list-unstyled" style="padding:8px;margin-bottom:0px;padding-bottom:0px;min-height:128px;">
											<li style="text-align:left;font-size:10px;">${address.custName }(收)</li>
											<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
											<li style="text-align:left;font-size:10px;word-break:break-all;">${address.address }</li>
											<li style="text-align:left;font-size:10px;">${address.telphone }</li>
											<li style="text-align:left;font-size:10px;">${address.post }</li>
										</ul>
										<c:if test="${custAccount.addressId == address.id}">
										<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;display:block" class="pull-right">
										</c:if>
										<c:if test="${custAccount.addressId != address.id}">
										<div style="width:60px;height:26px;background:#D3D3D3;padding-right: -5px;display:none" class="pull-right">
										</c:if>
											<label class="fontSize  center" style="font-size:8px;font-weight: normal;"><font color='white'>默认地址</font></label>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="col-md-12" style="padding-left:2px;padding-right:0px;margin-top:10px;">
								<c:if test="${succ == true }">
									<div class="alert alert-success col-md-5" role="alert" style="background:#dff0d8;text-align:left;color:#3c763d;border-color:#d6e9c6;position: relative;">新建收货地址成功！</div>
								</c:if>
								<c:if test="${succ == false }">
									<div class="alert alert-danger col-md-5" role="alert" style="background:#f2dede;text-align:left;color:#a94442;border-color:#ebccd1;position: relative;">新建收货地址失败！</div>
								</c:if>
								<div class="alert alert-success col-md-5" role="alert" style="background:#dff0d8;text-align:left;color:#3c763d;border-color:#d6e9c6;position: relative;display:none;">新建收货地址成功！</div>
								<div class="alert alert-danger col-md-5" role="alert" style="background:#f2dede;text-align:left;color:#a94442;border-color:#ebccd1;position: relative;display:none;">新建收货地址失败！</div>
						</div>
							<p style="line-height: 2; font-weight: bold;margin-bottom:0px;">新建收货地址</p>
							<div class="col-md-12" style="padding-left:0px;padding-top:0px;">
							<hr class="col-md-5" style="margin-top:10px;padding-right:5px;padding-left:0px;">
							</div>
							<div class="content">
								<div class="cl col-md-5"
									style="padding-left: 0px; padding-right: 0px;">
									<form role="form" action="address/save" method="post">
									  <div class="form-group">
									    <label for="username">收货人(必填)</label>
									    <input type="text" class="form-control" id="custName" name="custName" placeholder="请输入收货人">
									  </div>
									  <div class="form-group">
									    <label for="post">邮编(必填)</label>
									    <input type="text" class="form-control" id="post" name="post" placeholder="请输入邮编">
									  </div>
									  <div class="form-group">
									    <label for="telphone">电话(必填)</label>
									    <input type="tel" class="form-control" id="telphone" name="telphone" placeholder="请输入电话号码">
									  </div>
									  <div class="form-group">
									    <label for="address">收货地址(必填)</label>
											<textarea rows="3" cols="" class="form-control" id="address" name="address" placeholder="请输入收货地址" style="resize: none;"></textarea>
									  </div>
									  <button type="submit" class="btn btn-default col-md-3" style="margin-left:0px;margin-top:10px;" onclick="return checkForm();">提交</button>
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
	<script src="<%=basePath%>/js/customer/addressmg.js"></script>

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
		
	</script>
</body>
</html>