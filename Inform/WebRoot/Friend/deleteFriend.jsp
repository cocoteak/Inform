<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	background:url(img/10.jpg);
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
  <script type="text/javascript">
    function check()
    {
  // 必须先获取对象才能再获取其值
//var m=document.getElementById("mail").value（X）
    
        //用户名验证
        var n=document.getElementById("dname");
        n = n.value;
        if(n.length==0)
        {
            alert("好友姓名不能为空！");
            return false;
        }
    }
  </script>
  
  <body>
  <div id="context">
  <form action="deleteFriends">
  请输入删除好友的姓名：<input type="text" id="dname" name="dname"><input type="submit"  value="提 交">
  </form>
  </div>
  </body>
</html>
