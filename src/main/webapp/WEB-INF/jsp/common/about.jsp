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
<jsp:include page="../head.jsp"/>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp"/>
			<div class="cl-mcont aside">
				<jsp:include page="../left.jsp"/>
				<div class="content">
					<div class="row">
						<div style="min-height: 0px;"></div>
							<div class="block-flat" >
								<h2 style="font-weight: bold;">关于Sainte Claire</h2>
								<p style="line-height:2">
									<span>COMPANY：</span><br/>
									<span>Sainte Claire is a trademark belonging to Rodrigo Cordero, SL</span><br/>
									<span>Company details:</span><br/>
									<span>RODRIGO CORDERO, SL</span><br/>
									<span>CIF: B84854793</span><br/>
									<span>AVENDIA GALAXIA, 6</span><br/>
									<span>28023 ARAVACA</span><br/>
									<span>CONTACT US</span><br/>
									<span>E-mail: correo@sainteclaire.es</span><br/>
									<span>Phone number: 667949533</span><br/>
									<span>You can also use our contact form.</span><br/>
									<span>SHOPS</span><br/>
									<span>Sainte Claire Aravaca</span><br/>
									<span>Plaza del Rollo, 1</span><br/>
									<span>28023 Aravaca</span><br/>
									<span>Madrid</span><br/>
									<span>Phone number: 911828718</span><br/>
									<span>Opening hours:</span><br/>
									<span>Mornings 10,30h – 14,00h</span><br/>
									<span>Afternoons</span><br/>
									<span>Winter season 17,00h – 20,00h</span><br/>
									<span>Summer season 17,30h – 20,30h</span><br/>
									<span>Sainte Claire Gran Plaza 2</span><br/>
									<span>Local 064</span><br/>
									<span>Calle Químicos, Urbanización Carril del Tejar</span><br/>
									<span>28222 Majadahonda</span><br/>
									<span>Madrid</span><br/>
									<span>Phone number: 911725053</span><br/>
									<span>Opening hours: 10,00h – 22,00h</span><br/>
								</p>
							</div>
					</div><!-- end row -->
				</div>
			</div>
			<jsp:include page="../footer.jsp"/>
		</div>
	</div>

	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
	<script src="<%=basePath%>/js/jPushMenu.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/core.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/common.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
	<a href="#" class="back-to-top" style="display: none;"><i
		class="fa fa-angle-up"></i></a>
</body>
</html>