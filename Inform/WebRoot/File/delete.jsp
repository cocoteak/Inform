<%@ page language="java" import="java.util.*,java.sql.*,Files.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delete.jsp' starting page</title>
    
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
	font-size:18px;
	height: 340px;
	background:url(img/7.jpg);
	background-size:100%;
	color:#ffffff;
}
</style>
  </head>
  
  <body>
  <div id="context">
			<center>
				<h2>
					文件信息表
				</h2>
				<table border="1" width="210">
					<tr>
						<th>
							文件名&nbsp;
						</th>
						<th>
							上传者&nbsp;
						</th>
						<th>
							是否删除
						</th>
					</tr>
					<%
						Class.forName("com.mysql.jdbc.Driver");
						String url = "jdbc:mysql://localhost:3306/information";

						Connection con = DriverManager.getConnection(url, "root", "1234");
						Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
								ResultSet.CONCUR_UPDATABLE);

						String sql = "select * from file";
						ResultSet rs = st.executeQuery(sql);

						while (rs.next()) {//使用rs.string前要先使用rs.next();
					%>
					<tr>
						<th>
							<%=rs.getString(1)%>
						</th>
						<th>
							<%=rs.getString(2)%>
						</th>
						<th>
							<a href="deleteFile?dfile=<%=rs.getString(1)%>">删除上传</a>
						</th>
					</tr>

					<%
						}
					%>
				</table>
			</center>
			</div>
	</body>
</html>
