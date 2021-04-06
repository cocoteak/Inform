<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>top page</title>
    
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
#top {
	padding:5px 10px;
	width: 960px;
	color: #000;
	font-size:14px;
	height: 20px;
	background-color:#fff3ee;
	text-align: right;
}
#top a {
	text-decoration:none;
}
</style>

  </head>
  
  <body>
  <center>
   <div id="top"> <a href="../Main/main.jsp" target="_top">《《返回首页</a></div>
    </center>
  </body>
</html>
