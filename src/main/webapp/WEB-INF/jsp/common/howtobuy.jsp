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
								<h2 style="font-weight: bold;">购买指南</h2>
								<p style="line-height:2">
									<span>1. 选择一个大类（初生儿用品，婴儿服装，女孩装等），再选择类别（衣服分类）之后浏览图片。</span><br/>
									<span>2. 单击中意的服装照片，查看细节和尺寸</span><br/>
									<span>3. 选择单件并加入购物篮，之后您可以选择继续购物或付款</span><br/>
									<span>4. 如果您希望继续购物请重复以上过程，如果您想要付款请先注册</span><br/>
									<span>5. 在您登记您的详细信息后请先检查是否有误，如没有请选择“确认”</span><br/>
									<span>6. 选择付款方式</span><br/>
									<span>7. 确认付款</span><br/>
									<span>8. 您将接收到我们的邮件，确认您购买成功</span><br/>
								</p>
								<h2 style="font-weight: bold;">付款方式</h2>
								<p style="line-height:2">
									<span>• 信用卡或网银支付。</span><br/>
									<span>o 如果支付失败请检查以下可能导致错误的原因</span><br/>
									<span>§ 请检查使用的信用卡仍在有效期内</span><br/>
									<span>§ 请检查您是否已超出信用卡额度</span><br/>
									<span>§ 请检查您是否正确填写了所有的信用卡信息在您登记您的详细信息后请先检查是否有误，如没有请选择“确认”</span><br/>
								</p>
								<h2 style="font-weight: bold;">发票</h2>
								<p style="line-height:2">
									<span>点击发票并按照要求填好您的个人信息</span><br/><br/>
									<span>信用卡安全保障</span><br/>
									<span>您的信用卡信息将以加密的形式传送到银行网络。Sainte Claire只能看到交易数额，您的信息将对我们保密</span><br/>
								</p>
								<h2 style="font-weight: bold;">派送</h2>
								<p style="line-height:2">
									<span>• 我们将送货上门</span><br/>
									<span>• 收费标准</span><br/>
									<span>江浙沪6元，200元以上消费包运费</span><br/>
									<span>全国范围15元，300元以上消费包运费</span><br/>
									<span>• 发货时我们将邮件通知您（付款后即时出库），发货后您也将收到另一封确认邮件，最后邮递员会与您取得联系。</span><br/>
									<span>• 促销商品发货时间在7到10天</span><br/>
								</p>
								<h2 style="font-weight: bold;">更换</h2>
								<p style="line-height:2">
									<span>我们暂不支持退货</span><br/>
									<span>民族及节日服装不可以更换</span><br/>
									<span>其他货品必须在您收到我们发出的购买成功的确认邮件起的一个月内</span><br/>
									<span>更换商品运费自付</span><br/>
								</p>
								<h2 style="font-weight: bold;">客服</h2>
								<p style="line-height:2">
									<span>E-MAIL: correo@sainteclaire.es</span><br/>
									<span>电话：</span><br/>
									<span>+34 667-949-533(西班牙时间11：00-13：30/16:00-19:00)</span><br/>
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