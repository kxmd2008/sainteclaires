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
		<div class="nano nscroller has-scrollbar">
			<div class="content" tabindex="0" style="right: -17px;">
				<div class="title">
					<img alt="Sainte Claire" title="Sainte Claire"
						src="<%=basePath%>/common/image/logo_txt.png">
				</div>
				<ul class="nav nav-list treeview">
					<c:forEach var="pcat" items="${parents}">
					<li class=""><label class="tree-toggler nav-header">${pcat.name }</label>
						<c:choose>
							<c:when test="${pcat.id == parentCatId }">
								<ul class="nav nav-list tree" style="display: block;">
							</c:when>
							<c:otherwise>
								<ul class="nav nav-list tree" style="display: none;">
							</c:otherwise>
						</c:choose>
							<c:forEach var="subcat" items="${subcatMap[pcat.id]}">
								<li><a href="./products.do?subCateId=${subcat.id }">${subcat.name }</a></li>
							</c:forEach>
						</ul></li>
					</c:forEach>
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
