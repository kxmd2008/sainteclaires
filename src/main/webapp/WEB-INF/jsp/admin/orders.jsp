<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <jsp:include page="head.jsp"></jsp:include> --%>
<script src="../js/jquery-1.8.1.min.js" type="text/javascript"></script>
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<h1 class="page-title">订单查询</h1>
	</div>

	<ul class="breadcrumb">
		<li><a href="#">Home</a> <span class="divider">/</span></li>
		<li class="active">Orders</li>
	</ul>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="well">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Username</th>
							<th style="width: 26px;"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Mark</td>
							<td>Tompson</td>
							<td>the_mark7</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
						<tr>
							<td>2</td>
							<td>Ashley</td>
							<td>Jacobs</td>
							<td>ash11927</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
						<tr>
							<td>3</td>
							<td>Audrey</td>
							<td>Ann</td>
							<td>audann84</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
						<tr>
							<td>4</td>
							<td>John</td>
							<td>Robinson</td>
							<td>jr5527</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
						<tr>
							<td>5</td>
							<td>Aaron</td>
							<td>Butler</td>
							<td>aaron_butler</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
						<tr>
							<td>6</td>
							<td>Chris</td>
							<td>Albert</td>
							<td>cab79</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			</div>

			<div class="modal small hide fade" id="myModal" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Delete Confirmation</h3>
				</div>
				<div class="modal-body">
					<p class="error-text">
						<i class="icon-warning-sign modal-icon"></i>Are you sure you want
						to delete the user?
					</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					<button class="btn btn-danger" data-dismiss="modal">Delete</button>
				</div>
			</div>



			<footer>
				<hr>

				<!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
				<p class="pull-right">
					A <a href="http://www.portnine.com/bootstrap-themes"
						target="_blank">Free Bootstrap Theme</a> by <a
						href="http://www.portnine.com" target="_blank">Portnine</a>
				</p>

				<p>
					&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a>
				</p>
			</footer>

		</div>
	</div>
</div>



<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>


