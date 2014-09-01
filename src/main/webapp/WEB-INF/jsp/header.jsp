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
			<div id="head-nav" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-collapse">
						<ul class="nav navbar-nav navbar-right user-nav">
							<li class=""><a href="./index.do">首页 </a></li>
							<li class=""><a href="./shop.do">商店</a></li>
							<li class=""><a href="./blog.do">博客</a></li>
							<li class=""><a href="./changes.do">Changes</a></li>
							<li class=""><a href="./contact.do">联系我们</a></li>
							<c:if test="${ custAccount == null}">
								<li class=""><a href="login.do">登陆</a></li> 
							</c:if>
							<c:if test="${ custAccount != null}">
								<li class=""><a href="logout.do">退出</a></li> 
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

