<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <base href="<%=basePath%>"> 
    <title>My JSP 'updateHandle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
    function check()
    {
  // 必须先获取对象才能再获取其值
//var m=document.getElementById("mail").value（X）
    
        //用户名验证
        var n=document.getElementById("ufName");
        n = n.value;
        if(n.length<2||n.length>10)
        {
            alert("用户名长度必须在2到10位之间！");
            return false;
        }
  
        //邮箱验证
        var m=document.getElementById("ufEmail");
        m=m.value;
          if(m.length()==0 )
        {
            alert("邮箱不能为空！");
            return false;
        }
        if(m.indexOf("@") < 0 )
        {
            alert("邮箱中没有包含@字符！");
            return false;
        }
        
        //手机验证
        var t= document.getElementById("ufTel");
        t=t.value;
        if(t.length!=11)
        {
            alert("手机号必须为11位！");
            return false;
        }
    }
</script>
  </head>

	<body>
		<center>
			<form action="updateFriends" onsubmit="return check();" method="get">
				<h2>
					个人信息表
				</h2>
				<table border="1" width="250">
					<%
						Class.forName("com.mysql.jdbc.Driver");
						String url = "jdbc:mysql://localhost:3306/information";
						Connection con = DriverManager.getConnection(url, "root", "1234");
						Statement st = con.createStatement();

						String name =new String(request.getParameter("unames").getBytes("ISO-8859-1"),"utf-8");
						System.out.print(name);
						String sql = "select * from friend where name='" + name + "'";
						ResultSet rs = st.executeQuery(sql);

						if (rs.next()) {
							session.setAttribute("uname", name);
							
					%>
					<tr>
						<td>
							用户名：&nbsp;
						</td>
						<td>
							<input type="text" name="ufName" id="ufName"
								value="<%=rs.getString(1)%>">
						</td>
					</tr>
					<tr>
						<td>
							性&nbsp;&nbsp;&nbsp;别：&nbsp;
						</td>
						<td>
							<%
								if (rs.getString(2).equals("男")) {
							%>
							<input type="radio" name="ufGender" value="男" checked>
							男&nbsp;&nbsp;
							<%
								} else {
							%>
							<input type="radio" name="ufGender" value="男">
							男&nbsp;&nbsp;
							<%
								}
							%>
							<%
								if (rs.getString(2).equals("女")) {
							%>
							<input type="radio" name="ufGender" value="女" checked>
							女&nbsp;&nbsp;
							<%
								} else {
							%>
							<input type="radio" name="ufGender" value="女">
							女&nbsp;&nbsp;
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>
							年&nbsp;&nbsp;&nbsp;龄：&nbsp;
						</td>
						<td>
							<input type="text" name="ufAge" id="ufAge"
								value="<%=rs.getString(3)%>">
						</td>
					</tr>
					<tr>
						<td>
							手&nbsp;&nbsp;&nbsp;机：&nbsp;
						</td>
						<td>
							<input type="text" name="ufTel" id="ufTel"
								value="<%=rs.getString(4)%>">
						</td>
					</tr>
					<tr>
						<td>
							邮&nbsp;&nbsp;&nbsp;箱：&nbsp;
						</td>
						<td>
							<input type="text" name="ufEmail" id="ufEmail"
								value="<%=rs.getString(5)%>">
						</td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input name="sure" type="submit" value="修改" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="clear" type="reset" value="取消" />
						</td>
					</tr>

					<%
						} else {
							out.print("好友不存在,请重新输入好友名！");
							response.setHeader("refresh", "3;url=right.jsp");
						}
					%>
				</table>
			</form>
		</center>
	</body>
</html>
