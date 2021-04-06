<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>InfoManager page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>
     <frameset rows="30,*"  frameborder="no"> 
		<frame src="Friend/top.jsp">
		<frameset cols="40,100,482,42">
		    <frame >
			<frame src="Friend/left.jsp" >
			<frame src="Friend/right.jsp" name="main">
			<frame >
		</frameset>
	</frameset>
</html>
