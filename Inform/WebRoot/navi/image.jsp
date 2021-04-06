<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'image.jsp' starting page</title>
    
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
#context {
	width: 960px;
	font-size: 18px;
	height: 340px;
	background:url(img/7.jpg);
	background-size:100%;
}
</style>
  </head>
  
  <body>
  <div id="context">
					<%
						Class.forName("com.mysql.jdbc.Driver");
						String url = "jdbc:mysql://localhost:3306/information";

						Connection con = DriverManager.getConnection(url, "root", "1234");
						Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
								ResultSet.CONCUR_UPDATABLE);

						String sql = "select * from file where filename like '%.jpg'";
						ResultSet rs = st.executeQuery(sql);
						
						while (rs.next()) {//使用rs.string前要先使用rs.next();
					%>
				      
				        <img src="files/<%=rs.getString(1) %>" width="300px" height="300px">
				  
					<%
						}
					%>
		</div>
	</body>
</html>
