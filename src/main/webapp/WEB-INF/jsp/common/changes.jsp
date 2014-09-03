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
.divbg {
	background-image: url("product/imgs/DSC5545.jpg");
}
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp" />
			<div class="cl-mcont aside">
				<jsp:include page="../left.jsp" />
				<div class="content">
					<div class="row">
						<div class="block-flat">
							<h3 style="font-weight: bold;">变更信息</h3>
							<p style="line-height: 2">*无退货信息*</p>
							<p style="line-height: 2">
							<h4 style="font-weight: bold;">变更信息</h4>
							<span>•目前无变更信息</span><br /> <span>•在收到本商店确认发货信息起一个月内可退换商品</span>
							</p>
							<h3 style="font-weight: bold;">你需要填写下面的表格：</h3>
							<div class="content">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseOne"><span
													class="glyphicon glyphicon-minus" id="collapseIcon"></span>变更申请表
												</a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse">
											<div class="panel-body">
												<div class="form-group">
													<label>姓名（必填）</label> <input type="text"
														class="form-control">
												</div>
												<div class="form-group">
													<label>电子邮件（必填）</label> <input type="email"
														class="form-control">
												</div>
												<div class="form-group">
													<label>电话</label> <input type="text" class="form-control">
												</div>
												<div class="form-group">
													<labelcontrol-label">申请编号</label>
													<input type="text" class="form-control">
									             </div>
									             <div class="form-group">
													<labelcontrol-label">申请原因</label>
									                <textarea class="form-control"></textarea>
									             </div>
												<button type="button" class="btn btn-default"
													style="margin-left: 0px;">提交</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
					<div class="row">
<!-- 						<div class="block-flat"> -->
							<p style="line-height: 2">退换货申请提示：<br/>
								<div>
								<span>1.退换货产生的费用有顾客承担，但本店会赠送优惠券给您.</span><br/>
								<span>2.本店有权拒绝在人为情况下损坏商品的退还货申请.</span>
								</div>
							</p>
<!-- 						</div> -->
					</div>
				</div>
			</div>
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