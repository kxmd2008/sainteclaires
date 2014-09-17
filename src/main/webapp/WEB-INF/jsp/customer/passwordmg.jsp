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
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp" />
			<div class="cl-mcont aside" style="min-height:300px;max-height:480px;">
				<jsp:include page="../profile.jsp" />
				<div class="content" style="min-height:200px;">
					<div class="row">
						<div class="block-flat" style="margin-top:40px;">
							<p style="line-height: 2; font-weight: bold;margin-bottom:0px;">修改密码</p>
							<div class="col-md-12" style="padding-left:0px;padding-top:0px;">
							<hr class="col-md-5" style="margin-top:10px;padding-right:5px;padding-left:0px;">
							</div>
							<div class="content">
								<div class="cl col-md-5"
									style="padding-left: 0px; padding-right: 0px;">
									<form role="form">
									  <div class="form-group">
									    <label for="old_password">旧密码</label>
									    <input type="password" class="form-control" id="old_password" placeholder="请输入旧密码">
									  </div>
									  <div class="form-group">
									    <label for="new_password">新密码</label>
									    <input type="password" class="form-control" id="new_password" placeholder="请输入新密码">
									  </div>
									  <div class="form-group">
									    <label for="confirm_password">确认密码</label>
									    <input type="password" class="form-control" id="confirm_password" placeholder="请输入确认密码">
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

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
</body>
</html>