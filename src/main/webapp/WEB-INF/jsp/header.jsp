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
<style>
<!--
/* .dropdown-menu > li:hover{ */
/* 		background:red; */
/* 		background-color:red; */
/* 		color:red; */
/* } */
 .dropdown-menu > li > a:hover{ 
 		background:#F9F9F9; 
 		color:black; 
 } 
-->
</style>
			<div id="head-nav" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-collapse">
						<ul class="nav navbar-nav navbar-right user-nav">
							<li class="">
								<select onchange="changeLocale();" id="localeSel">	
									<option value="zh_CN" <c:if test="${locale == 'zh_CN' }">selected="selected"</c:if> >中文
									<option value="en_US" <c:if test="${locale == 'en_US' }">selected="selected"</c:if> >English
								</select>
							</li>
							<li class=""><a href="<%=basePath%>/index"><s:message code="header.home"></s:message></a></li>
							<li class=""><a href="<%=basePath%>/shop">商店</a></li>
							<li class=""><a href="<%=basePath%>/changes">Changes</a></li>
							<li class=""><a href="<%=basePath%>/contact">联系我们</a></li>
							<c:if test="${ empty userName }">
								<li class=""><a href="login">登陆</a></li> 
							</c:if>
							<c:if test="${!empty userName}">
								<li class="">
									<div class="dropdown" style="padding:22px;padding-bottom:0px;">
									<a  data-toggle="dropdown" data-target="profile_center" >
    									<c:out value="${userName}"></c:out> </a>
   									 <span class="caret"></span>		
    								<ul class="dropdown-menu" role="menu" id="profile_center" aria-labelledby="profile_center" style="margin-top:3px;padding-top:0px;padding-bottom:0px;right:20px;min-width:105px;border-radius:0px;">
									    <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=basePath%>/account">个人中心</a></li>
									    <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=basePath%>/cart">购物车</a></li>
									    <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=basePath%>/orders">我的订单</a></li>
									    <li role="presentation" class="divider" style="margin-top:0px;margin-bottom:0px;"></li>
									    <li role="presentation"><a role="menuitem" tabindex="-1" href="<%=basePath%>/logout">退出</a></li>
									</ul>
 								</div>
								</li> 
							</c:if>
						</ul>
						<ul class="nav navbar-nav not-nav">
							<div style="margin-left: 20px;"></div>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
						</ul>

					</div>
				</div>
			</div>

<script>
	function changeLocale(){
		var locale = $("#localeSel").val();
		var d = {"localeStr" : locale};
		$.post("changeLocale", d, function(data){
			if(data.head.resp_code = '200'){
				location.reload();
			}
		});
	}

</script>