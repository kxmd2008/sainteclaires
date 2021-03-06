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
						<div class="col-md-12" style="padding-left:20px;">
								<div class="alert alert-success col-md-5" role="alert" style="background:#dff0d8;text-align:left;color:#3c763d;border-color:#d6e9c6;position: relative;display:none;"><s:message code="account.save.succ"/>！</div>
								<div class="alert alert-danger col-md-5" role="alert" style="background:#f2dede;text-align:left;color:#a94442;border-color:#ebccd1;position: relative;display:none;"><s:message code="account.save.fail"/>！</div>
						</div>
						<div class="block-flat" style="margin-top:40px;">
							<p style="line-height: 2; font-weight: bold;margin-bottom:0px;"><s:message code="profile.accountMgt"/></p>
							<div class="col-md-12" style="padding-left:0px;padding-top:0px;">
							<hr class="col-md-5" style="margin-top:10px;padding-right:5px;padding-left:0px;">
							</div>
							<div class="content">
								<div class="cl col-md-5"
									style="padding-left: 0px; padding-right: 0px;">
									<form role="form" >
									  <div class="form-group">
									    <label for="username"><s:message code="name.required"/></label>
									    <input type="text" class="form-control" name="custName" id="username" placeholder="<s:message code="name.required.placeholder"/>" value="${custAccount.custName }">
									  </div>
									  <div class="form-group">
									    <label for="email"><s:message code="email.required"/></label>
									    <input type="email" class="form-control" name="email" id="email" placeholder="<s:message code="email.required.placeholder"/>" value="${custAccount.email }">
									  </div>
									  <div class="form-group">
									    <label for="telphone"><s:message code="phone.required"/></label>
									    <input type="tel" class="form-control" id="telphone" name="phone" placeholder="<s:message code="phone.required.placeholder"/>" value="${custAccount.phone }">
									  </div>
									  <button type="button" class="btn btn-default col-md-3" style="margin-left:0px;margin-top:10px;" onclick="updateAccount();"><s:message code="table.button.submit"/></button>
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
		$(document).ready(function(){
			
		});
		function updateAccount(){
			var username = $("#username").val();
			var email = $("#email").val();
			var telphone = $("#telphone").val();
			if(username == null || username == ""){
				showDanger("姓名不能为空!");
				return;
			}
			if(email == null || email == ""){
				showDanger("电子邮件不能为空!");
				return;
			}
			if(telphone == null || telphone == ""){
				showDanger("电话号码不能为空!");
				return;
			}
			var data = {
					"custName":username,
					"email":email,
					"phone":telphone
			}
			$.post("account/save",data,function(msg){
				if(msg.head.rep_code == 200){
					$(".alert-success").css("display","block");
					$(".alert-danger").css("display","none");
				}else{
					showDanger(msg.head.rep_message);
				}
			});
		}
		function showDanger(msg){
			$(".alert-danger").css("display","block");
			$(".alert-danger").html(msg);
			$(".alert-success").css("display","none");
		}
	</script>
</body>
</html>