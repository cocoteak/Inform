<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>left.jsp</title>
    
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
#context {
	width:160px;
	color: #000;
	font-size:18px;
	height:480px;
	background-color:#Fffaf4;
    text-decoration: none;
}
</style>
  </head>
  
  <body>
  <div id="context">
      <p><a href="Info/selectInfo.jsp" target="main">查看个人信息</a></p><br/>
      <p><a href="Info/updateInfo.jsp" target="main">修改个人信息</a></p><br/>
      <p><a href="Info/updatePwd.jsp" target="main">修改密码</a></p>
      </div>
  </body>
</html>
