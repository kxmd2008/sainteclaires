<%
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
%>
<meta charset="utf-8">
<title>Sainteclaire Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="<%=basePath%>/common/image/favicon.png">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/common/bootstrap.min_v2.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/theme_v2.css">
<link rel="stylesheet"  href="<%=basePath%>/css/font-awesome/css/font-awesome.css">
<script src="<%=basePath%>/js/jquery.js" type="text/javascript"></script>

