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
	<div class="col-md-7" style="margin-top:20px;">
		<!-- 放图片 -->
		<div class="col-md-3"></div>
		<div class="col-md-8" style="margin-top:0px;">
			<img src="<%=basePath%>/images/register.png" width="500px" height="467px" />
		</div>
		
	</div>
	<div class="col-md-5" style="margin-top:80px;">
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
		<div class="content" style="height:370px">
			<div class="col-md-12" style="width:280px;">
				<div class="fontSize">
					<hr style="width:40px;border:1px solid #C1C1C1;display: inline-block;vertical-align: middle;">&nbsp;
					<label style="display: inline-block;vertical-align: middle;">使用sainleclaire账号登录</label>&nbsp;
					<hr style="width:40px;border:1px solid #C1C1C1;display: inline-block;vertical-align: middle;">
				</div>
			</div>
			<div class="col-md-12">
			<form role="form" action="account/create" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1" class="fontSize">账号</label>
					<input type="text"
						class="form-control" id="loginName" name="loginName" placeholder="电子邮箱或手机号" style="width:250px;font-size:10px;">
					<label id="loginMsg" class="fontSize" style="display:none"><font color="red">用户名已存在</font></label>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="fontSize">密码</label> <input type="password"
						class="form-control" id="password" name="password" 
						placeholder="6~16位数字+字母组合" style="width:250px;font-size:10px;">
					<label id="passwordMsg" class="fontSize" style="display:none"><font color="red">密码不符合要求</font></label>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1" class="fontSize">确认密码</label> <input type="password"
						class="form-control" id="passwordAgin" 
						placeholder="请输入确认密码" style="width:250px;font-size:10px;">
					<c:if test="${!empty error }">
						<label class="fontSize"><font color="red">注册失败</font></label>
					</c:if>
					<label id="passwordAginMsg" class="fontSize" style="display:none"><font color="red">两次输入密码不一致</font></label>
				</div>
				<!-- <button type="submit" class="btn btn-primary col-md-2">登录</button>
				<label class="fontSize" style="margin-left:45px;">已有账号?&nbsp;&nbsp;<a href="#">直接登陆</a></label> -->
				<div class="checkbox" style="padding-left:0px;">
					<button type="submit" class="btn btn-primary col-md-4 pull-left" onclick="return checkForm();">注册</button>
					<label class=" pull-right fontSize" style="vertical-align: middle;font-weight: bold;">已有账号?&nbsp;&nbsp;<a href="login">直接登陆</a></label>
				</div>
				<div class="checkbox" style="margin-top:20px;width:286px;">
					<label class="fontSize" > <input type="checkbox" /> <font style="font-weight: bold;font-size: 8px;">我已阅读并同意《sainleclaire服务协议》</font>
					</label>
				</div>
			</form>
		</div>
	</div>
	<script src="<%=path%>/common/jquery.js" type="text/javascript"></script>
	<script src="<%=path%>/common/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/customer/register.js"></script>
</body>
</html>