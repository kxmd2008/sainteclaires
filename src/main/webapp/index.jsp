<!DOCTYPE html>
<html lang="zh">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="common/bootstrap.css" rel="stylesheet">
<link href="common/bootstrap.responsive.css" rel="stylesheet">
<style type="text/css">
	.center{
		margin-left: auto !important;
		margin-right: auto !important;
		float:none !important;
		display: block;
		text-align:center;
	}
</style>
</head>
	<body>
		<!-- header/bar栏 -->
		<nav id="ngbf-header-bar" role="navigation"></nav>
		<!-- 登录对话框 -->
		<div id="ngbf_login_dlg" class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="login_label" aria-hidden="true">
			<div class="modal-dialog" style="width:400px;padding-top: 50px;">
    			<div class="modal-content">
    				<div class='modal-header'>
    					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    					<h3>用户登录</h3>
    				</div>
    				<div class='modal-body'>
    						<form class="form-horizontal"  method="post" role="form">
    							<div class="form-group">
    								<span for="login_username" class="col-sm-4 control-label">域账号</span>
								    <div class="col-sm-6">
								      <input id='login_username' type='text' placeholder="username" class="form-control"/>
								    </div>
								</div>
								<div class="form-group">
    								<span for="login_password" class="col-sm-4 control-label">密&nbsp;&nbsp;&nbsp;码</span>
								    <div class="col-sm-6">
								      <input id='login_password' type='password' placeholder="password" class="form-control"/>
								    </div>
			    				</div>
    						</form>
    						
					  <div class="form-group" >
                          <label class="col-sm-4 control-label"></label>
                             <div class="col-sm-6" style="color:red;height:100%;min-height:30px;" id="loginErrorMsg">
                             </div>
                      </div>
    						
    				</div>
    				<div class='modal-footer'>
    					<a href="http://ngbf/oss/plugins/ngbf-c-account/AccountForgotPassword.xhtml">忘记密码？</a>
    					<button id='btn_login' class='btn btn-primary' onclick='nj.auth.doLogin()'>登 录</button>
    				</div>
    			</div>
    		</div>
			
			
		</div>
		<iframe id="main_frame" width="100%"  height="620px" marginwidth="0px" marginheight="0px" src="home/index.html"></iframe>
		<!-- footer/bar栏 -->
		<div id="ngbf-footer"></div>
	</body>
	
	
<script src="common/jquery.js"></script>
<script src="common/bootstrap.js"></script>
<script type="text/javascript">
</script>
</html>

