<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'navi.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
* {
	margin: 0px auto;
	padding: 0px;
}

body {
	text-align: center;
}

#navi {
	width: 960px;
	color: #ffffff;
	font-size: 18px;
	height: 30px;
	background-color: #afdfe4;
}

#navi li {
	float: left;
	width: 118px;
	text-align: center;
	list-style: none;
	border: 1px solid #009ad6;
}

#navi a {
	font-size: 14px;
	color: #ffffff;
	line-height: 30px;
	display: block;
	text-decoration: none;
}

#navi a:hover {
	background-color: #F99877;
	color: #FFF;
}

</style>
  </head>
  
  <body>
  <div id="navi">
				<ul>
					<li>
						<a href="Main/bottom.jsp"  target="bottom">首页</a>
					</li>
					<li>
						<a href="navi/receipt.jsp" target="bottom">写帖子</a>
					</li>
					<li>
						<a href="File/upload.jsp" target="bottom">上传文件</a>
					</li>
					<li>
						<a href="navi/image.jsp" target="bottom">精美照片</a>
					</li>
					<li>
						<a href="navi/video.jsp" target="bottom">视频观看</a>
					</li>
					<li>
						<a href="File/downloads.jsp" target="bottom">资源下载</a>
					</li>
					<li>
						<a href="File/delete.jsp" target="bottom">删除资源</a>
					</li>
					<li>
						<a href="navi/MyReceipt.jsp" target="bottom">我的帖子</a>
					</li>
				</ul>
			</div>
  </body>
</html>
