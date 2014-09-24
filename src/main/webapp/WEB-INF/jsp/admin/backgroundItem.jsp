<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/my.css">
<!-- blueimp Gallery styles -->
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload.css">
<link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript><link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload-ui-noscript.css"></noscript>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jcarousel.basic.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.nailthumb.1.0.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/bootstrap-multiselect.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/prettify.css">
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
.wrapper {
    max-width: 620px;
    padding: 0 20px 40px 20px;
    margin: auto;
}
.bhoriz {
	width: 300px;
	height: 200px;
}
.circle {
    position: absolute;
/*     bottom: 0; */
	top:0;
	right:0px;
	margin-top:0px;
/*     left: 15px; */
}

.circle a {
    text-decoration: none;
    display: inline-block;
    
    font-size: 11px;
    line-height: 14px;
    min-width: 14px;
    
    background: #fff;
    color: #000;
    border-radius: 14px;
    padding: 3px;
    text-align: center;
    
    margin-right: 2px;
/*     border:1px solid #000; */
    
    opacity: .75;
}

.circle a:hover {
    background: #000;
    color: #fff;
    opacity: 1;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.75);
}
/* .btn-group button{ */
/*  	color: #fff; */
/*  	background: #556075; */
/*   	border-color: #357ebd; */
/* } */
</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="" style="position: relative;"> 
  <!--<![endif]-->
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<c:choose>
			<c:when test="${empty picture }">
				<h1 class="page-title" id="product_title">新增背景图片</h1>
			</c:when>
			<c:otherwise>
				<h1 class="page-title" id="product_title">修改背景图片</h1>
			</c:otherwise>
		</c:choose>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<button class="btn btn-primary" onclick="save();">
					<i class="icon-save"></i> 保存
				</button>
				<div class="btn-group"></div>
			</div>
			<div class="well ">
				 <select id="category" name="category" title="选择类别" >
				 	<option value="">选择类别</option>
				 	<option value="首页" 
                        		<c:if test="${'首页' == picture.name}">selected="selected"</c:if>
                        	>首页</option>
                    <option value="商店" 
                        		<c:if test="${'商店' == picture.name}">selected="selected"</c:if>
                        	>商店</option>
                    <c:forEach var="p" items="${parents }">
                    <option value="${p.name}" 
                        		<c:if test="${p.name == picture.name}">selected="selected"</c:if>
                        	>${p.name}</option>
                    </c:forEach>
                   </select>
					<!--产品图片展示 -->
					<div class="wrapper" 
						<c:if test="${empty picture }">
							style="display: none"
						</c:if>
					>
			            <div class="jcarousel-wrapper"  style="width:300px;">
			                <div class="jcarousel" >
			                    <ul>
			                    	<c:forEach var="pic" items="${picture.pics }">
			                        <li class="bhoriz">
			                        	<div style="z-index: 100;float: right;">
			                        	<span class="glyphicon glyphicon-remove-circle"></span>
			                        	</div>
			                        	<img src="<%=basePath%>/${pic}" alt="${pic}" title="${pic}">
			                        </li>
			                    	</c:forEach>
			                    </ul>
			                </div>
			                <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
			                <a href="#" class="jcarousel-control-next">&rsaquo;</a>
			                <p class="jcarousel-pagination">
			                </p>
			                 <p class="circle" >
			                	<a href="javascript:deletePic();"><i class="icon-remove"></i></a>
			                </p>
			            </div>
			        </div>
					<form id="fileupload" action="<%=basePath%>/auth/upload" method="post" enctype="multipart/form-data">
				        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
				        <input type="hidden" name="type" value="BGPIC">
				        <div class="fileupload-buttonbar">
				            <div>
				                <!-- The fileinput-button span is used to style the file input field as button -->
				                <span class="btn btn-success fileinput-button">
				                    <i class="glyphicon glyphicon-plus"></i>
				                    <span>上传图片...</span>
				                    <input type="file" name="files" multiple>
				                </span>
				            </div>
				        </div>
				        <!-- The table listing the files available for upload/download -->
				        <table role="presentation" class="table table-striped"><tbody class="files" id="files"></tbody></table>
					</form>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</div>

<input type="hidden" id="bgId" value="${picture.id }">
<input type="hidden" id="picStr" value="${picture.picStr }">
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td style="vertical-align: middle;">
            <span class="preview"></span>
        </td>
        <td style="vertical-align: middle;">
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td style="vertical-align: middle;">
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress bar-success" style="width:0%;"></div></div>
        </td>
        <td style="vertical-align: middle;">
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel" onclick="cancel(this)">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<script type="text/javascript">
function deletePic(){
	var picNum = $(".jcarousel-pagination .active").html();
	var pics = $(".jcarousel ul li");
	var i = eval(picNum + "-" + 1);
	var alt;
	var value="";
	$(pics).each(function(index){
		if(index == i){
			alt = $(pics[index]).children("img").attr("alt");
			pics[i].remove();
			var hiddenPics = $("#picStr").val();
			var hiddenPic = hiddenPics.split(",");
			$(hiddenPic).each(function(i){
				if(hiddenPic[i] != alt){
					value = value+ hiddenPic[i]+",";
				}
			});
			value = value.substring(0,value.length-1);
			$("#picStr").val(value);
		}
	});
	var child = $(".jcarousel ul").children();
	if(child.length == 0){
		$(".wrapper").css("display","none");
	}
}
</script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jcarousel.basic.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.nailthumb.1.0.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="<%=basePath%>/upload/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="<%=basePath%>/upload/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="<%=basePath%>/upload/load-image.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="<%=basePath%>/upload/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<script src="<%=basePath%>/common/bootstrap.min_v2.js"></script>
<!-- blueimp Gallery script -->
<script src="<%=basePath%>/upload/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="<%=basePath%>/upload/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-ui.js"></script>
<script src="<%=basePath%>/js/prettify.js"></script>
<!-- The main application script -->
<script src="<%=basePath%>/upload/main.js"></script>
<script src="<%=basePath%>/js/admin/bgItem.js"></script>
  </body>
</html>

