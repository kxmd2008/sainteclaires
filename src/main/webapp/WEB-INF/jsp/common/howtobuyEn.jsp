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
								<h2 style="font-weight: bold;">How to buy</h2>
								<p style="line-height:2">
									<span>1. Choose section (Newborn Essentials, Baby, Girl, …), and category (type of clothing) and looks.</span><br/>
									<span>2. View the products you are interested in and click on the photograph to zoom in and see every detail, available sizes, reference and price.</span><br/>
									<span>3. Select an item and add it to the basket. You can then choose to continue shopping or process your order.</span><br/>
									<span>4. If you want to continue shopping, repeat the process, however, if you want to process the order, follow the steps to register.</span><br/>
									<span>5. Once you have entered your data, check that they are correct and click “confirm”.</span><br/>
									<span>6. Select a payment method.</span><br/>
									<span>7. Confirm the order.</span><br/>
									<span>8. You will receive an email confirming your order.</span><br/>
								</p>
								<h2 style="font-weight: bold;">PAYMENT OPTIONS</h2>
								<p style="line-height:2">
									<span>• Pay Pal (credit / debit card or Paypal user).</span><br/>
									<span>o If the bank rejects your card, please, check:</span><br/>
									<span>§ The card has not expired. Check that your card does not exceed the validity date.</span><br/>
									<span>§ You may have reached your card limit. Check with your bank that the card has not exceeded the amount allowed for purchases.</span><br/>
									<span>§ Check that you have filled in all the required fields correctly.</span><br/>
								</p>
								<h2 style="font-weight: bold;">INVOICE</h2>
								<p style="line-height:2">
									<span>Mark the option ‘invoice’ in personal details and fill in all the fiscal requirements.</span><br/><br/>
									<span>Credit card and security</span><br/>
									<span>The card details are only entered in a website property of a bank and transmitted in an encrypted way. Sainte Claire will only know the outcome of the operation, not having access to any data of the inserted card</span><br/>
								</p>
								<h2 style="font-weight: bold;">DELIVERY</h2>
								<p style="line-height:2">
									<span>• We deliver your order to the specified address</span><br/>
									<span>• Delivery service</span><br/>
									<span>RMB: 6,00 ￥. Purchases over 200￥ free shipping</span><br/>
									<span>China: 15.00 ￥. Purchases over 300￥ free shipping</span><br/>
									<span>• We will send you an email confirming the dispatch (as soon as your order will be about to leave the warehouse), another one justifying the dispatch and finally the courier will contact you to provide information about the delivery of your order.</span><br/>
									<span>• If promotions, the delivery time is 7 to 10 days.</span><br/>
								</p>
								<h2 style="font-weight: bold;">EXCHANGES</h2>
								<p style="line-height:2">
									<span>RETURNS are not allowed</span><br/>
									<span>No exchanges allowed for ceremony items</span><br/>
									<span>All exchanges must be made within 1 month of the e-mail confirming shipment</span><br/>
									<span>Exchanges don’t involve shipping costs</span><br/>
								</p>
								<h2 style="font-weight: bold;">CUSTOMER SERVICE</h2>
								<p style="line-height:2">
									<span>E-MAIL: correo@sainteclaire.es</span><br/>
									<span>Phone number：</span><br/>
									<span>+34 667-949-533(11,00 – 13,30h / 16,00h – 19,00h local time Spain)</span><br/>
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