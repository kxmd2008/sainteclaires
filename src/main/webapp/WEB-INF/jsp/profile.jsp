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
<<style>
<!--
.treeview label{
	font-size: 10px;
}
-->
</style>
	<div class="page-aside tree">
		<div class="nano nscroller has-scrollbar" style="min-height:200px;max-height:600px;">
			<div class="content" tabindex="0" style="right: -17px;">
				<div class="title">
					<img alt="Sainte Claire" title="Sainte Claire"
						src="<%=basePath%>/common/image/logo_txt.png">
				</div>
				<ul class="nav nav-list treeview" style="line-height: 1">
					<li class=""><label class="tree-toggler nav-header">个人中心</label>
						<ul class="nav nav-list tree" style="display: block;">
								<li><a href="./account">账户管理</a></li>
								<li><a href="./address">收货地址</a></li>
								<li><a href="./password">修改密码</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="pane" style="display: none;">
				<div class="slider" style="height: 1117px; top: 0px;"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
