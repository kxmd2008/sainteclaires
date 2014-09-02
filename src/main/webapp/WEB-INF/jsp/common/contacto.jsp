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
			<jsp:include page="../header.jsp"/>
			<div class="cl-mcont aside">
				<jsp:include page="../left.jsp"/>
				<div class="content">
					<div class="row">
						<div style="min-height: 75px;"></div>
<!-- 						<div class="col-sm-12 col-md-12"> -->
							<div class="block-flat">
								<p><span style="padding-bottom: 5px;">您可以通过以下方式联系我们：</span><br/>
								<span style="padding-bottom: 5px;">电子邮箱：correo@sainteclaire.es</span><br/>
								<span>也可以填写下面的联系申请表联系我们</span></p>
								<div class="header" >
									<h3 style="font-weight: bold;">商店地址</h3>
								</div>
								<div class="content">
									<div class="cl col-md-6">
										<p>Sainte Claire Aravaca<br/>
										Plaza del Rollo, 1<br/>
										28023 Madrid</p>
									</div>
									<div class="cl col-md-6">
										<p>Sainte Claire Aravaca<br/>
										Plaza del Rollo, 1<br/>
										28023 Madrid</p>
									</div>		
								</div>
							</div>
<!-- 						</div> -->
					</div><!-- end row -->
					<div class="row">
						<div class="block-flat">
								<div class="form-group">
					              <label>姓名（必填）</label> <input type="text" class="form-control">
					            </div>
								<div class="form-group">
					              <label>电子邮件（必填）</label> <input type="email" class="form-control">
					            </div>
					            <div class="form-group">
					              <label>问题</label> <input type="text" class="form-control">
					            </div>
					            <div class="form-group">
		               				<label control-label">您的信息</label>
					                <textarea class="form-control"></textarea>
					             </div>
				            </div>
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