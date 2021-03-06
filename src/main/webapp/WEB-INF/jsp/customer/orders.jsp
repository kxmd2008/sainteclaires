<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
<link href="<%=basePath%>/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<link href="<%=basePath%>/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
.box {
	position: absolute;
	top: 100%;
	/*   left: 0; */
	z-index: 1000;
/* 	display: block; */
	float: right;
	min-width: 160px;
	padding: 5px;
	margin: 2px 0 0;
	font-size: 14px;
	text-align: left;
	list-style: none;
	background-color: #fff;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 3px solid #ccc;
	border: 3px solid rgba(0, 0, 0, .15);
	border-radius: 4px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 12px 12px rgba(0, 0, 0, .175);
}

#show_tooltip:hover .dropdown-menu {
	display: block;
}
.icon-close:before{
	content: "";
}
.icon-close:before{
	content: "";
}
.fontSize{
	font-size: 12px;
	color:#838383;
	font-weight: bold;
}
.center{
	margin-left: auto !important;
	margin-right: auto !important;
	float:none !important;
	display: block;
	text-align:center;
}
.list-inline > div {
  display: inline-block;
  padding-right: 0px;
  padding-left: 5px;
}
.box{
	width:23%;
	border :2px dashed #C2C8CF;
	line-height: 2;
	vertical-align: top;
	margin:1%;
	min-height:124px;
}
.list-inline  div:hover{  
    box-shadow: 6px 6px 6px rgba(0,0,0,0.2);  
    opacity: 0.9;
} 
/* .dropdown-menu { */
/* 	padding: 10px 0; */
/* 	margin: 10px 0 0; */
/* 	border: 1px solid #ccc; */
/* 	 border: 1px solid rgba(0, 0, 0, .15);  */
/* 	 border-radius: 4px;  */
/* 	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175); */
/* 	box-shadow: 0 6px 12px rgba(0, 0, 0, .175); */
/* } */
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp"/>
<!-- 			<div class="cl-mcont aside" style="display:block;"> -->
<!-- 			</div> -->
			<div class="col-md-12">
				<div class="col-md-9 center">
					<div class="col-md-12" style="margin-top: 20px; height: 80px;">
						<img src="<%=basePath%>/common/image/logo_txt.png"
							class="pull-left" />
					</div>
					<div class="col-md-12" style="height: 20px;">
						<div class="pull-left fontSize"><s:message code="orders.title"/> </div>
					</div>
					<form action="<%=basePath%>/orders/find" method="post" class="form-inline" role="form" style="text-align: left;margin-left:15px;">
					 <div class="form-group">
					  <div class="input-group date form_start_datetime" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_start">
					    <input type="text" class="form-control" id="start" name="start" placeholder="<s:message code="orders.start.info"/>" value="${start }">
					    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
					  </div>
					  <input type="hidden" id="dtp_start" value="" /><br/>
					  </div>
					  <div class="form-group">
					  <div class="input-group date form_end_datetime" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_end">
					    <input type="text" class="form-control" id="end" name="end" placeholder="<s:message code="orders.end.info"/>" value="${end }">
					    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
					  </div>
					  <input type="hidden" id="dtp_end" value="" /><br/>
					  </div>
					  <div class="form-group" style="margin-top:0px;">
					    <button type="submit" class="btn btn-default"><s:message code="orders.btn.search"/></button>
					  </div>
					</form>
					
					<div class="col-md-12" style="min-height: 160px; height: 100%;">
						<hr
							style="width: 100%; border: 1px solid #F0F0F0; margin-bottom: 0px; margin-top: 5px;" />
						<div class="table-responsive">
						<table class="table no-border hover table-bordered">
							<thead class="">
								<tr>
									<th><s:message code="unsettled.order.no"/></th>
									<th><s:message code="shoppingbag.thead.product"/></th>
									<th><s:message code="orders.thead.attr"/></th>
									<th><s:message code="orders.thead.price"/></th>
									<th><s:message code="shoppingbag.num"/></th>
									<th><s:message code="orders.thead.status"/></th>
									<th><s:message code="shoppingbag.order.sum"/></th>
									<th></th>
								</tr>
							</thead>
							<tbody class="">
								<c:forEach items="${orders }" var="order">
<%-- 								<c:set var="index" value=""></c:set> --%>
								<c:forEach items="${order.items }" var="item" varStatus="status">
								<tr style="background: white;">
									<c:if test="${status.index == 0 }">
									<td style="vertical-align: middle" rowspan="${fn:length(order.items)}">
										${order.orderNo }
									</td>
									</c:if>
									<td>
										<ul class="list-unstyled list-inline"
											style="vertical-align: middle; margin-bottom: 0px;display: table">
											<li><a class="cart_list_product_img" style="margin-bottom:0px;" href="<%=basePath%>/detail?id=${item.productId }">
												<img src="<%=basePath%>/${item.pic}"  width="75" height="75" /></a></li>
											<li style="vertical-align: middle;display: table-cell;"><label class="fontSize"
												style="vertical-align: middle; font-weight: normal;margin-bottom:0px;">${item.productName}</label></li>
										</ul>
									</td>
									<td style="vertical-align: middle">
										<ul class="list-unstyled"
											style="vertical-align: middle; margin-bottom: 0px;">
											<li><s:message code="shoppingbag.size"/>：${item.size }</li>
										</ul>
									</td>
									<td style="vertical-align: middle">${item.price }</td>
									<td style="vertical-align: middle" class="">${item.num }</td>
									<td style="vertical-align: middle">
									<c:choose>
										<c:when test="${order.status==0 }"><s:message code="orders.status.nopay"/></c:when>
										<c:when test="${order.status==1 }"><s:message code="orders.status.pay"/></c:when>
										<c:when test="${order.status==2 }"><s:message code="orders.status.fahuo"/></c:when>
										<c:when test="${order.status==3 }"><s:message code="orders.status.shouhuo"/></c:when>
										<c:when test="${order.status==4}">
											<s:message code="orders.exchange.info"/>
										</c:when>
										<c:when test="${order.status==5}">
											<s:message code="orders.exchange.reject"/>
										</c:when>
										<c:otherwise><s:message code="orders.complete"/></c:otherwise>
									</c:choose>
									</td>
									<td style="vertical-align: middle" >${item.num*item.price }</td>
									<c:if test="${status.index == 0 }">
									<td style="vertical-align: middle" rowspan="${fn:length(order.items)}">
										<c:choose>
											<c:when test="${order.status==0 }">
											<form action="pay" method="get">
											<button type="submit" class="btn btn-default"><s:message code="orders.btn.confirm.pay"/></button>
											</form>
											</c:when>
											<c:when test="${order.status==1 || order.status==2}">
											<form action="shouhuo" method="get">
												<input type="hidden" value="${order.id}" name="orderId"/>
												<input type="hidden" value="3" name="status"/>
												<button type="submit" class="btn btn-default"><s:message code="orders.btn.confirm.shouhuo"/></button>
											</form>
											</c:when>
											<c:when test="${order.status==3}">
												<a type="button" class="btn btn-default" href="exchange/${order.orderNo}/${item.id}"><s:message code="orders.btn.confirm.exchange"/></a>
											</c:when>
											<c:when test="${order.status==4}">
												<s:message code="orders.exchange.info"/>
											</c:when>
											<c:when test="${order.status==5}">
												<s:message code="orders.exchange.reject"/>
											</c:when>
											<c:otherwise>
												<s:message code="orders.complete"/>
											</c:otherwise>
										</c:choose>
									</td>
									</c:if>
								</tr>
								</c:forEach>
								</c:forEach>
							</tbody>
						</table>
						</div>
						<hr
							style="width: 100%; border: 1px solid #F0F0F0; margin-bottom: 0px; margin-top: 0px;" />
					</div>
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
	<script src="<%=basePath%>/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=basePath%>/js/bootstrap-datetimepicker.js"></script>
	<script src="<%=basePath%>/js/common/detail.js"></script>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$('.form_start_datetime').datetimepicker({
	        //language:  'fr',
	        weekStart: 1,
	        todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			minView:2,
			startView: 2,
			forceParse: 0,
	        showMeridian: 1
	    });
		$('.form_end_datetime').datetimepicker({
	        //language:  'fr',
	        weekStart: 1,
	        todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			minView:2,
			startView: 2,
			forceParse: 0,
	        showMeridian: 1
	    });
// 		$(document).ready(treeToggler);
	</script>
</body>
</html>