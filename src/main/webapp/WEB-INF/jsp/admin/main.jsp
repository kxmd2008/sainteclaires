<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
%>
<script src="<%=basePath%>/js/admin/main.js" type="text/javascript"></script>
<style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    <li><a href="#" class="hidden-phone visible-tablet visible-desktop" role="button"><select onchange="changeLocale();" id="localeSel" style="margin-bottom:0px;width:100px;">	
									<option value="zh_CN" <c:if test="${locale == 'zh_CN' }">selected="selected"</c:if> >中文
									<option value="en_US" <c:if test="${locale == 'en_US' }">selected="selected"</c:if> >English
								</select></a></li>
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i>${account}
                            <i class="icon-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">My Account</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
                            <li class="divider visible-phone"></li>
                            <li><a tabindex="-1" href="#" onclick="logout();"><s:message code="main.head.loginout"/></a></li>
                        </ul>
                    </li>
                </ul>
                <a class="brand" href="index.html"><span class="first"></span> <span class="second">Sainteclaire Management System</span></a>
        </div>
    </div>
    <div class="sidebar-nav">
        <a href="#dashboard-menu" class="nav-header" data-toggle="collapse"><i class="icon-dashboard"></i><s:message code="main.left.order.mgt"/><span class="label label-info">+3</span></a>
        <c:if test="${collapse=='order'}">
        <ul id="dashboard-menu" class="nav nav-list collapse in">
        </c:if>
        <c:if test="${collapse!='order'}">
        <ul id="dashboard-menu" class="nav nav-list collapse">
        </c:if>
        	<c:if test="${active=='unsettledOrders'}">
            <li class="active"><a href="<%=basePath%>/auth/unsettledOrders"><s:message code="main.left.unsettled.order"/></a></li>
            </c:if>
            <c:if test="${active!='unsettledOrders'}">
            <li><a href="<%=basePath%>/auth/unsettledOrders"><s:message code="main.left.unsettled.order"/></a></li>
            </c:if>
            <c:if test="${active=='orders'}">
            <li class="active"><a href="<%=basePath%>/auth/orders"><s:message code="main.left.order.query"/></a></li>
            </c:if>
            <c:if test="${active!='orders'}">
            <li ><a href="<%=basePath%>/auth/orders"><s:message code="main.left.order.query"/></a></li>
            </c:if>
<!--             <li ><a href="orderStat">订单统计</a></li> -->
        </ul>

        <a href="#accounts-menu" class="nav-header" data-toggle="collapse"><i class="icon-briefcase"></i><s:message code="main.left.category.mgt"/></a>
      	 <c:if test="${collapse=='category'}">
        <ul id="accounts-menu" class="nav nav-list collapse in">
        </c:if>
        <c:if test="${collapse!='category'}">
        <ul id="accounts-menu" class="nav nav-list collapse">
        </c:if>
        	<c:if test="${active=='categorys'}">
            <li class="active"><a href="<%=basePath%>/auth/categorys"><s:message code="main.left.category.list"/></a></li>
            </c:if>
            <c:if test="${active!='categorys'}">
            <li ><a href="<%=basePath%>/auth/categorys"><s:message code="main.left.category.list"/></a></li>
            </c:if>
        </ul> 

        <a href="#error-menu" class="nav-header collapsed" data-toggle="collapse"><i class="icon-exclamation-sign"></i><s:message code="main.left.product.mgt"/></a>
       <c:if test="${collapse=='product'}">
        <ul id="error-menu" class="nav nav-list collapse in">
         </c:if>
        <c:if test="${collapse!='product'}">
        <ul id="error-menu" class="nav nav-list collapse">
         </c:if>
         	 <c:if test="${active=='products'}">
            <li class="active"><a href="<%=basePath%>/auth/products"><s:message code="main.left.product.list"/></a></li>
            </c:if>
            <c:if test="${active!='products'}">
            <li ><a href="<%=basePath%>/auth/products"><s:message code="main.left.product.list"/></a></li>
            </c:if>
             <c:if test="${active=='productAdd'}">
            <li class="active"><a href="<%=basePath%>/auth/productAdd"><s:message code="main.left.product.add"/></a></li>
            </c:if>
            <c:if test="${active!='productAdd'}">
            <li ><a href="<%=basePath%>/auth/productAdd"><s:message code="main.left.product.add"/></a></li>
            </c:if>
        </ul>

        <a href="<%=basePath%>/auth/bgMgt" class="nav-header" ><i class="icon-question-sign"></i><s:message code="main.left.background.image.mgt"/></a>
    </div>
<script>
	function changeLocale(){
		var locale = $("#localeSel").val();
		var d = {"localeStr" : locale};
		$.post("../changeLocale", d, function(data){
			if(data.head.resp_code = '200'){
				location.reload();
			}
		});
	}

</script>

