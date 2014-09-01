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
<div class="page-aside tree">
	<div class="nano nscroller has-scrollbar" style="min-height:75px;">
		<div class="content" tabindex="0" style="right: -17px;">
			<div class="title">
				<img alt="Sainte Claire" title="Sainte Claire" style="z-index: 10"
					src="<%=basePath%>/common/image/logo_txt.png">
			</div>
			<ul class="nav nav-list treeview">
			</ul>
		</div>
		<div class="pane" style="display: none;">
			<div class="slider" style="height: 1117px; top: 0px;"></div>
		</div>
	</div>
</div>
