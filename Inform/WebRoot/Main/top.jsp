<%@ page language="java" import="java.util.*,User.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
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
	padding:3px 10px;
	width: 940px;
	color: #000;
	font-size:14px;
	height:15px;
	background-color:#90d7ec;
	text-align: right;
}
#top a {
	text-decoration: none;
}
</style>

  </head>
  
  <body>
   <div id="top">
				<%
					String flag = (String) session.getAttribute("flag");
					if (flag.equals("false")) {
						date d = (date) session.getAttribute("date");
						String name = d.getName();
						session.setAttribute("oldName", name);
				%>
				欢迎<%=name%>登录
				<%
					} else {
						date d = (date) session.getAttribute("newUser");
						String name = d.getName();
						session.setAttribute("oldName", name);
				%>
				欢迎<%=name%>登录
				<%
					}
				%>
				<a href="Friend/friendManager.jsp" target="_top">我的好友</a>
				<a href="Info/InfoManager.jsp" target="_top">个人信息管理</a>
				<a href="Info/invalidate.jsp" target="_top">退出登录</a>
			</div>
  </body>
</html>
