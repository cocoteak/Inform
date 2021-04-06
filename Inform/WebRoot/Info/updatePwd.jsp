<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>updatePwd page</title>
    
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
	padding:100px;
}
</style>
  </head>
  
  	<script type="text/javascript">
    function check()
    {
         var new1=document.getElementById("newPwd");
             new1=new1.value;
         var again=document.getElementById("againPwd");
             again=again.value;
        
        if(new1.length<6||new1.length>14)
        {
            alert("重置密码长度必须在2到10位之间！");
            return false;
        }
        if(again!=new1)
        {
            alert("重置密码与确认密码不一致");
            return false;
        }
        
  
    }
</script>

	<body>
		<div id="context">
		<center>
			<form action="pwdCheck" onsubmit="return check();" method="get">
				<!--form标签内的onsubmit可以实现跳转前先验证表单的内容是否正确，如果正确会提交userCheck。js中如果验证不成功就会返回false，不会提交，直到验证成功才会提交。  -->
				<table border="1" width="250">
					<tr>
						<td>
							重置密码：
							<input type="text" name="newPwd" id="newPwd" size="20">
						</td>
					</tr>
					<tr>
						<td>
							确认密码：
							<input type="text" name="againPwd" id="againPwd" size="20">
						</td>
					</tr>
					<tr>
						<td>
							<input type="reset" value="清  空">
							<input type="submit" value="提  交">
						</td>
					</tr>
				</table>
			</form>
			</center>
		</div>
	</body>
</html>
