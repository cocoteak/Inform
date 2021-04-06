<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
    
    <title>My JSP 'video.jsp' starting page</title>
    
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
	height: 340px;
	background:url(img/7.jpg);
	background-size:100%;
	color:#ffffff;
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

			String sql = "select * from file where filename like '%.wmv'";
			ResultSet rs = st.executeQuery(sql);
        
			while (rs.next()) {//使用rs.string前要先使用rs.next();
		System.out.print(rs.getString(1));
		%>
		
<object id="NSPlay" width=200 height=180 classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab&#35;Version=6,4,5,715" standby="Loading Microsoft Windows Media Player components..."type="application/x-oleobject" hspace="5">
 <param name="FileName" value="files/<%=rs.getString(1) %>">
 </object>
		<%
			}
		%>
		
</div>
	</body>
</html>
