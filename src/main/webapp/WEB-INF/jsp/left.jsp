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
<style>
<!--
.treeview label{
	font-size: 12px;
}
-->
</style>
	<div class="page-aside tree">
		<div class="title">
			<img alt="Sainte Claire" title="Sainte Claire"
				src="<%=basePath%>/common/image/logo_txt.png">
		</div>
		<div class="nano nscroller has-scrollbar" style="min-height:200px;max-height:600px;">
			<div class="content" tabindex="0" style="right: -17px;">
				<ul class="nav nav-list treeview" style="line-height: 1">
					<c:choose>
						<c:when test="${locale=='en_US' }">
						<c:forEach var="pcat" items="${parents}">
							<c:choose>
								<c:when test="${pcat.id == parentCatId }">
								<li class="open" onclick="closeTree(this);"><label class="tree-toggler nav-header" key="${pcat.name }">${pcat.nameEn }</label>
									<ul class="nav nav-list tree" style="display: block;">
								</c:when>
								<c:otherwise>
								<li class="" onclick="closeTree(this);"><label class="tree-toggler nav-header" key="${pcat.name }">${pcat.nameEn }</label>
									<ul class="nav nav-list tree" style="display: none;">
								</c:otherwise>
							</c:choose>
								<c:forEach var="subcat" items="${subcatMap[pcat.id]}">
									<li><a href="./products?subCateId=${subcat.id }">${subcat.nameEn }</a></li>
								</c:forEach>
							</ul></li>
						</c:forEach>
						</c:when>
						<c:otherwise>
						<c:forEach var="pcat" items="${parents}">
							<c:choose>
								<c:when test="${pcat.id == parentCatId }">
								<li class="open" onclick="closeTree(this);"><label class="tree-toggler nav-header" key="${pcat.name }">${pcat.name }</label>
									<ul class="nav nav-list tree" style="display: block;">
								</c:when>
								<c:otherwise>
								<li class="" onclick="closeTree(this);"><label class="tree-toggler nav-header" key="${pcat.name }">${pcat.name }</label>
									<ul class="nav nav-list tree" style="display: none;">
								</c:otherwise>
							</c:choose>
								<c:forEach var="subcat" items="${subcatMap[pcat.id]}">
									<li><a href="./products?subCateId=${subcat.id }">${subcat.name }</a></li>
								</c:forEach>
							</ul></li>
						</c:forEach>
						</c:otherwise>
					</c:choose>
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
		function closeTree(obj){
			$(".treeview ul").css("display","none");
			$(obj).children("ul").css("display","block");
			var div = $("#cl-wrapper");
			if(div.hasClass("expend")) {
// 				var categoryName = $(obj).children("label").html();
				var categoryName = $(obj).children("label").attr("key");
				var d = {"categoryName" : categoryName};
				$.post("catebg", d, function(data){
					if(data.head.rep_code == '200' && data.item.pics.length > 0){
						$("#cl-wrapper").css("background-image", "url('"+data.item.pics[data.item.pics.length-1]+"')");
					}
				});
			}
			
		}
	</script>