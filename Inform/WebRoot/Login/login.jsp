<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=utf-8");
%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login page</title>
<style type="text/css">
* {
	margin: 0px auto;
	padding: 0px;
}
body {
	text-align: center;
	background:url(img/14.jpg);
	background-size:100%;
	position:relative;
}
#context {
	width: 360px;
	color: #000;
	font-size: 16px;
	height: 340px;
	position:absolute;
	left:400px;
	top:200px;
}
</style>
  </head>

	<body>
	<div id="context">
		<form action="loginCheck" method="get">
			<table border="1" width="260px" align="center">
				<tr>
					<th>
						用户名：
					</th>
					<th>
						<input type="text" name="uname" />
					</th>
				</tr>
				<tr>
					<th>
						密码：
					</th>
					<th>
						<input type="text" name="upwd" />
					</th>
				</tr>
				<tr align="center">
					<th colspan="2">
						<input type="submit" name="submit" value="提 交" />
						<input type="reset" name="reset" value="重 置" />
					</th>
				</tr>
				<tr align="center">
					<td colspan="2">
						<a href="Login/register.jsp">注册用户</a>
					</td>
				</tr>
			</table>
		  </form>
		</div>
	</body>
</html>
