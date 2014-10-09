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
						<div class="block-flat" style="margin-bottom:20px;">
							<h3 style="font-weight: bold;"><s:message code="changes.info"/></h3>
							<p style="line-height: 2">*<s:message code="changes.noreturninfo"/>*</p>
							<p style="line-height: 2">
							<h4 style="font-weight: bold;"><s:message code="changes.info"/></h4>
							<span style="line-height: 2">•<s:message code="changes.info.condition1"/></span><br /> <span style="line-height: 2">•<s:message code="changes.info.condition2"/></span>
							</p>
							<h3 style="font-weight: bold;margin-top:20px;"><s:message code="changes.table.tip"/>：</h3>
							<div class="content" style="padding:0px;">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default" style="border:  ;">
										<div class="panel-heading" onclick="javascript:openCollapse();">
											<h4 class="panel-title" style="margin-top:0px;">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseOne"><span
													class="glyphicon glyphicon-plus" id="collapseIcon"></span><s:message code="changes.table.title"/>
												</a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse">
											<div class="panel-body">
												<div class="form-group">
													<label><s:message code="changes.name"/></label> <input type="text"
														class="form-control">
												</div>
												<div class="form-group">
													<label><s:message code="changes.email"/></label> <input type="email"
														class="form-control">
												</div>
												<div class="form-group">
													<label><s:message code="changes.phone"/></label> <input type="text" class="form-control">
												</div>
												<div class="form-group">
													<labelcontrol-label"><s:message code="changes.apply.no"/></label>
													<input type="text" class="form-control">
									             </div>
									             <div class="form-group">
													<labelcontrol-label"><s:message code="changes.apply.reason"/></label>
									                <textarea class="form-control"></textarea>
									             </div>
												<button type="button" class="btn btn-default"
													style="margin-left: 0px;"><s:message code="changes.table.submit"/></button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
					<div class="row" style="margin-top:0px;margin-left:0px;">
<!-- 						<div class="block-flat"> -->
							<p style="line-height: 2"><h5><s:message code="changes.apply.tip.title"/>：</h5><br/>
								<div style="margin-left:20px;line-height: 2">
									<span>1.<s:message code="changes.apply.tip1"/>.</span><br/>
									<span>2.<s:message code="changes.apply.tip2"/>.</span>
								</div>
							</p>
							<p>
								<center><strong><font size="4">
									<s:message code="changes.right.declare"/>.
								</font></strong></center>
							</p>
<!-- 						</div> -->
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
	<script src="<%=basePath%>/js/common/changes.js"></script>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
</body>
</html>