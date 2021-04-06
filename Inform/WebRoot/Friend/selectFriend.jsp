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
	background:url(img/10.jpg);
	background-size:100%;
	color:#ffffff;
}
#context {
	width: 360px;
	font-size:20px;
	height:400px;
}
</style>
  </head>

	<body>
		<div id="context">
			<form action="deleteFriend">
				<h2>
					好友信息表
				</h2>
				<table border="1" width="360">
					<tr>
						<th>
							姓名
						</th>
						<th>
							性别
						</th>
						<th>
							年龄
						</th>
						<th>
							手机
						</th>
						<th>
							邮&nbsp;&nbsp;&nbsp;箱：&nbsp;
						</th>
					</tr>
					<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";

			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

            String userName =(String)session.getAttribute("oldName");
			String sql = "select * from friend where userName='"+userName+"' ";
			ResultSet rs=st.executeQuery(sql);
			
			while(rs.next()){  //使用rs.string前要先使用rs.next();
		%>
                     <tr>
						<th>
							<%=rs.getString(1)%>
						</th>
						<th>
							<%=rs.getString(2)%>
						</th>
						<th>
							<%=rs.getString(3)%>
						</th>
						<th>
							<%=rs.getString(4)%>
						</th>
						<th>
							<%=rs.getString(5)%>
						</th>
					</tr>
					<%} %>
				</table>
			</form>
		</div>
	</body>
</html>
