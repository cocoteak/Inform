<%@ page language="java" import="java.util.*,User.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>secess page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

	<body>
		<center>
			<form action="Info/right.jsp" method="get">
				<h2>
					修改成功
				</h2>
				<input type="submit" name="submit" value="确 定" />
			</form>
		</center>
		<% 
            date d=(date)session.getAttribute("newUser"); 
            String name=d.getName();
            session.setAttribute("oldName",name);
            %>
	</body>
</html>
