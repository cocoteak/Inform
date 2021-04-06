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
	background-color:#Fffaf4;
}
#context {
	width:160px;
	color: #000;
	font-size:18px;
	height:400px;
}
#top a {
	text-decoration: none;
}
</style>
  </head>

	<body>
	<div id="context">
		<p>
			<a href="Friend/addFriend.jsp" target="main">添加好友信息</a>
		</p>
		<br />
		<p>
			<a href="Friend/selectFriend.jsp" target="main">查询好友信息</a>
		</p>
		<br />
		<p>
			<a href="Friend/updateFriend.jsp" target="main">修改好友信息</a>
		</p>
		<br />
		<p>
			<a href="Friend/deleteFriend.jsp" target="main">删除好友信息</a>
		</p>
		</div>
	</body>
</html>
