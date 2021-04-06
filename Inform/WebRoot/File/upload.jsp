<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
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
	width: 960px;
	font-size: 18px;
	height: 340px;
	background:url(img/7.jpg);
	background-size:100%;
	color:#ffffff;
}
</style>
  </head>
  
  <body>
  <div id="context">
   <form action="uploadFile" method="post" enctype="multipart/form-data">
   请选择文件：<input type="file" name="fileup" >
   <input type="submit" value="上传"/>
   </form>
   </div>
  </body>
</html>
