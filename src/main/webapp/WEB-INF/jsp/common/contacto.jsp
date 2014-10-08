<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
						<div style="min-height: 0px;"></div>
<!-- 						<div class="col-sm-12 col-md-12"> -->
							<div class="block-flat" >
								<p style="line-height:2"><span style="padding-bottom: 5px;"><s:message code="contacto.title" />：</span><br/>
								<span style="padding-bottom: 5px;"><s:message code="contacto.email" />：correo@sainteclaire.es</span><br/>
								<span><s:message code="contacto.title2" /></span></p>
								<div class="header" style="height:30px;">
									<h3 style="font-weight: bold;"><s:message code="contacto.shop.address" /></h3>
								</div>
								<div class="content" >
									<div class="cl col-md-6" style="padding-left:0px;padding-right:0px;">
										<p>Sainte Claire Aravaca<br/>
										Plaza del Rollo, 1<br/>
										28023 Madrid</p>
									</div>
									<div class="cl col-md-6" style="padding-left:0px;padding-right:0px;">
										<p>Sainte Claire Aravaca<br/>
										Plaza del Rollo, 1<br/>
										28023 Madrid</p>
									</div>		
								</div>
							</div>
<!-- 						</div> -->
					</div><!-- end row -->
					<div class="row" style="margin-top:0px;">
						<div class="block-flat" style="padding-top:0px;margin-bottom:0px;padding-bottom:0px;">
								<div class="form-group">
					              <label><s:message code="contacto.table.name" /></label> <input type="text" class="form-control">
					            </div>
								<div class="form-group">
					              <label><s:message code="contacto.table.email" /></label> <input type="email" class="form-control">
					            </div>
					            <div class="form-group">
					              <label><s:message code="contacto.table.problem" /></label> <input type="text" class="form-control">
					            </div>
					            <div class="form-group">
		               				<label control-label"><s:message code="contacto.table.info" /></label>
					                <textarea class="form-control"></textarea>
					             </div>
					             <button type="button" class="btn btn-default" style="margin-left:0px;"><s:message code="table.button.submit" /></button>
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