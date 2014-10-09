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
<meta charset="utf-8" />
<title>Login Page</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="<%=path%>/common/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="<%=path%>/common/bootstrap.responsive.css" rel="stylesheet"
	type="text/css" />
<style>
.fontSize{
	font-size: 12px;
	color:#838383;
}
.content {
  background-color:#FFF;
  width: 340px;
/*   margin-left:70%; */
  margin-bottom: 0px;
  padding: 30px;  
  padding-top: 20px;  
  padding-bottom: 15px;  
  height:330px;
  border :2px solid #EFF2F7;
}
</style>
</head>
<body class="login">
	<!-- BEGIN LOGIN -->
	<div class="col-md-12" style="height:50px;">
		<div class="col-md-1"></div>
		<div class="col-md-11" style="margin-top:20px;">
			<!-- <label>Sanile Claire</label> -->
			<img src="<%=basePath%>/common/image/logo_txt.png" />
		</div>
	</div>
	<div class="col-md-7" style="margin-top:10px;">
		<!-- 放图片 -->
		<div class="col-md-3"></div>
		<div class="col-md-9 center" style="margin-top:0px;">
			<img src="<%=basePath%>/images/login.png" style="margin-right:20px;" />
		</div>
		
	</div>
	<div class="col-md-5" style="margin-top:100px;">
		<%-- <div class="col-md-12 fontSize">
			<label style="font-weight: bold;">使用第三方账号登录</label>
		</div>
		<div class="col-md-12" style="margin-top:10px;">
			<div style="width:280px;">
				<button type="button" class="btn btn-default" style="width:80px;background:#08A2D4"><img alt="" src="<%=basePath%>/common/image/tx_weibo.png" width="24px;" height="24px" /></button>
				<button type="button" class="btn btn-default" style="width:80px;background:#EA3836"><img alt="" src="<%=basePath%>/common/image/icon_weibo_24.png" /></button>
				<button type="button" class="btn btn-default" style="width:80px;background:#3274AE"><img src="<%=basePath%>/common/image/renren.jpg" width="24px;" height="24px" /></button>
			</div>
		</div> --%>
		<div class="content">
			<div class="col-md-12" style="width:280px;">
				<div class="fontSize" style="width:246px;">
					<hr style="width:30px;border:1px solid #C1C1C1;display: inline-block;vertical-align: middle;">
					<label style="display: inline-block;vertical-align: middle;width:175px;text-align: center;"><s:message code="login.form.title"/></label>
					<hr style="width:30px;border:1px solid #C1C1C1;display: inline-block;vertical-align: middle;">
				</div>
			</div>
			<div class="col-md-12">
			<form action="j_spring_security_check" method="post">
<!-- 			<form role="form" action="login" method="post"> -->
				<div class="form-group">
					<label for="exampleInputEmail1" class="fontSize"><s:message code="login.form.account"/></label> <input type="text"
						class="form-control" id="loginName" name="j_username" placeholder="<s:message code="login.form.account.placeholder"/>" style="width:246px;font-size:10px;">
					<label id="loginMsg" class="fontSize" style="display:none"><font color="red"><s:message code="login.form.account.empty.error"/></font></label>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="fontSize"><s:message code="login.form.password"/></label> <input type="password"
						class="form-control" id="password" name="j_password"
						placeholder="<s:message code="login.form.password"/>" style="width:246px;font-size:10px;">
					<c:if test="${param.error}">
					<label  class="fontSize"><font color="red"><s:message code="login.form.password.wrong.error"/></font></label>
					<%-- <span style="color:red;"><spring:message code="${errorMsg}" /></span> --%>
					</c:if>
					<label id="passwordMsg" class="fontSize" style="display:none"><font color="red"><s:message code="login.form.password.empty.error"/></font></label>
				</div>
				<div class="checkbox" style="padding-left:0px;">
					<!-- <label class="fontSize" style="font-weight: bold;"> <input type="checkbox"> 记住密码
					</label> -->
					<div style="width:246px"><!-- <label style="font-weight: bold;" class="fontSize"> -->
						<a href="#" class="pull-right fontSize" style="font-weight: bold;"><s:message code="login.form.password.forgot"/></a></label>
					</div>
				</div>
				<div class="checkbox" style="padding-left:0px;">
					<button type="submit" class="btn btn-primary col-md-4 pull-left" onclick="return checkForm();"><s:message code="btn.login"/></button>
					<label class=" pull-right fontSize" style="vertical-align: middle;font-weight: bold;"><s:message code="login.form.no.account"/>&nbsp;&nbsp;<a href="register"><s:message code="btn.registion"/></a></label>
				</div>
				
			</form>
		</div>
	</div>
	<input type="hidden" id="locale" value="${locale }"> 
	<script src="<%=path%>/common/jquery.js" type="text/javascript"></script>
	<script src="<%=path%>/common/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/customer/login.js"></script>
</body>
</html>