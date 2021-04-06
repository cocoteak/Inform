<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
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
	color: #ffffff;
	font-size:16px;
	height:355px;
	background:url(img/7.jpg);
	background-size:100%;
}
#receipt {
	width: 900px;
	font-size:18px;
	height:30px;
	border-bottom:1px  dashed #ffffff;
	padding:10px 30px;
}
#bottom {
	width: 960px;
	font-size:18px;
	height:20px;
	padding:10px;
	text-align:center;
}
.right{
float:right;
}

</style>
  </head>

	<body>
		<div id="context">
			<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";

			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

			String sql = "select * from receipt";
			ResultSet rs=st.executeQuery(sql);
			
			if(rs.next()){
			rs.last();//指针移向最后一条记录
			int count = rs.getRow();//有多少条记录
			int pageshow = 6;//显示几条记录
			int pagecount;//总页数
			if (count % pageshow == 0)
						pagecount = count / pageshow;
					else
						pagecount = count / pageshow + 1;

					int nowpage;//现在所显示的页面
					String nowpage1 = request.getParameter("page");
					if (nowpage1 == null)
						nowpage = 1;
					else {
						nowpage = Integer.valueOf(request.getParameter("page"));
					}
					rs.absolute((nowpage - 1) * pageshow + 1);
					int k = count - (nowpage - 1) * pageshow;
					
					if (k >0 && k <pageshow) {//最后一页显示记录条数不足showpage数
						for (int i = 0; i < k; i++) {
				%>
		
			<p id="receipt">
				<a href="navi/showMessage.jsp?title=<%=rs.getString(1)%>"><%=rs.getString(1)%></a>
				<span class="right">发布者：<%=rs.getString(2)%></span>
			</p>
<%                             rs.next();
							}
						} else {
							for (int i =1; i <=pageshow; i++) {
					%>
			<p id="receipt">
				<a href="navi/showMessage.jsp?title=<%=rs.getString(1)%>"><%=rs.getString(1)%></a>
				<span class="right">发布者：<%=rs.getString(2)%></span>
			</p>
					<%
						      rs.next();
							}
						}
					%>
			<div id="bottom">
			第<%=nowpage%>页 共有<%=pagecount%>页
			<%
				if (nowpage < pagecount) {
			%>
			<a href="Main/bottom.jsp?page=<%=nowpage + 1%>">下一页</a>
			<%
				}
				if (nowpage > 1) {
			%>
			<a href="Main/bottom.jsp?page=<%=nowpage - 1%>">上一页</a>
			<%
				}
				}else{
				out.print("还没有任何帖子发布");
				}
			%>
			</div>
		</div>
	</body>
</html>
