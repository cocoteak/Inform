<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>"> 
    
    <title>My JSP 'addFrienf.jsp' starting page</title>
    
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
        var n=document.getElementById("fname");
        n = n.value;
        if(n.length<2||n.length>10)
        {
            alert("好友名长度必须在2到10位之间！");
            return false;
        }
        
        //性别验证
    var gender=document.getElementsByName("fgender"); 
    var i;
    var flag=false;
    for(i=0; i<gender.length;i++){
     if(gender[i].checked){
         flag=true;
       }
}    
if(flag==false){
            alert("请选择性别！");
            return false;
       }
 //年龄验证
        var a=document.getElementById("fage");
        a=a.value;
         if(a.length==0)
        {
            alert("年龄长度为2位！");
            return false;
        }
      
        //手机验证
        var t= document.getElementById("ftel");
        t=t.value;
        if(t.length!=11)
        {
            alert("手机号必须为11位！");
            return false;
        }
		
		  //邮箱验证
        var m=document.getElementById("fmail");
        m=m.value;
		if(m.length==0)
        {
            alert("联系地址不能为空！");
            return false;
        }
        if(m.indexOf("@") < 0 )
        {
            alert("邮箱中没有包含@字符！");
            return false;
        }
    }
  </script>
  
  <body>
		<div id="context">
			<form action="addFriends" onsubmit="return check()" method="get">
				<h2>
					添加好友信息
				</h2>
				<table border="1" width="210">
					<tr>
						<td>
							姓名
						</td>
						<td>
							<input type="text" name="fname" id="fname">
						</td>
					</tr>
					<tr>
						<td>
							性别
						</td>
						<td>
							性&nbsp;&nbsp;&nbsp;别：&nbsp;
						   <input type="radio" name="fgender" value="男">
						        男&nbsp;&nbsp;
						   <input type="radio" name="fgender" value="女">
						         女&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							年龄
						</td>
						<td>
							<input type="text" name="fage" id="fage">
						</td>
					</tr>
					<tr>
						<td>
							联系电话
						</td>
						<td>
							<input type="text" name="ftel" id="ftel">
						</td>
					</tr>
					
					<tr>
						<td>
							联系地址
						</td>
						<td>
							<input type="text" name="fmail" id="fmail">
						</td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input name="sure" type="submit" value="提交" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="clear" type="reset" value="取消" />
						</td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
