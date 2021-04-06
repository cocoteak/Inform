<%@ page language="java" import="java.util.*,java.sql.*,User.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>select page</title>
    
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
	background:url(img/2.jpg);
	background-size:100%;
	color:#ffffff;
}
#context {
	width: 482px;
	font-size:20px;
	height:400px;
}
</style>
  </head>
  
  <body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";

			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

			String name=(String)session.getAttribute("oldName");
			ResultSet rs;
		
			String sql = "select * from info where name='"+name+"'";
			rs=st.executeQuery(sql);
			
			
			while(rs.next()){//使用rs.string前要先使用rs.next();
		%>
		<div id="context">
			<form>
				<h2>
					个人信息表
				</h2>
				<table border="1" width="210">
					<tr>
						<td>
							用户名：&nbsp;
						</td>
						<td>
							<%=rs.getString(1)%>
						</td>
					</tr>
					<tr>
						<td>
							性&nbsp;&nbsp;&nbsp;别：&nbsp;
						</td>
						<td>
							<%=rs.getString(3)%>
						</td>
					</tr>
					<tr>
						<td>
							出生年月：
						</td>
						<td>
							<%=rs.getString(4)%>-<%=rs.getString(5)%>
						</td>
					</tr>
					
					<tr>
						<td>
							手&nbsp;&nbsp;&nbsp;机：&nbsp;
						</td>
						<td>
							<%=rs.getString(6)%>
						</td>
					</tr>
					<tr>
						<td>
						             邮&nbsp;&nbsp;&nbsp;箱：&nbsp;
						</td>
						<td>
							<%=rs.getString(7)%>
						</td>
					</tr>
					<tr>
						<td>
							爱&nbsp;&nbsp;&nbsp;好：&nbsp;
						</td>
						<td>
							<%=rs.getString(8)%>
						</td>
					</tr>
					<tr>
						<td>
							简&nbsp;&nbsp;&nbsp;介：&nbsp;
						</td>
						<td>
							<%=rs.getString(9)%>
						</td>
					</tr>
				</table>
			</form>
		<%} %>
		</div>
	</body>
</html>
