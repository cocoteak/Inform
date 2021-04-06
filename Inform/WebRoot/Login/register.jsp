<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<title>register page</title>
<style type="text/css">
body {
	position:relative;
	background:url(img/8.jpg);
	background-size:100%;
}
#all {
	width:700px;
	background-color:#fff7fb;
	position:absolute;
	left:150px;
	top:20px;
	filter:alpha(Opacity=80);-moz-opacity:0.8;opacity: 0.8
}

ul {
	list-style: none;
}

li {
    margin:20px 5px;
	margin-left:5px;
}

</style>
	</head>


	<script type="text/javascript">
    function check()
    {
  // 必须先获取对象才能再获取其值
//var m=document.getElementById("mail").value（X）
    
        //用户名验证
        var n=document.getElementById("name");
        n = n.value;
        if(n.length<2||n.length>10)
        {
            alert("用户名长度必须在2到10位之间！");
            return false;
        }
  
         //密码验证
         var p=document.getElementById("pwd");
        p= p.value;
         var p1=document.getElementById("pwd1");
        p1= p1.value;
        if(p.length<2||p.length>14)
        {
            alert("密码长度必须在2到10位之间！");
            return false;
        }
        if(p!=p1)
        {
            alert("密码与确认密码不一致");
            return false;
        }
        
        //性别验证
    var gender=document.getElementsByName("gender"); 
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
          //爱好验证
 var habit=document.getElementsByName("habit"); 
  var flage=false;
 for (var i=0;i<habit.length;i++){
 if(habit[i].checked){ //判断复选框是否选中
     flage=true; 
 }
 }
 if(flage==false){
            alert("请选择爱好！");
            return false;
       }
 
        //邮箱验证
        var m=document.getElementById("mail");
        m=m.value;
        if(m.indexOf("@") < 0 )
        {
            alert("邮箱中没有包含@字符！");
            return false;
        }
        
        //手机验证
        var t= document.getElementById("telephone");
        t=t.value;
        if(t.length!=11)
        {
            alert("手机号必须为11位！");
            return false;
        }
    }
</script>

	<body>
		<div id="all">
			<form action="userCheck" onsubmit="return check();" method="get">
				<!--form标签内的onsubmit可以实现跳转前先验证表单的内容是否正确，如果正确会提交userCheck。js中如果验证不成功就会返回false，不会提交，直到验证成功才会提交。  -->
				<ul>
					<li>
						用户名：&nbsp;
						<input type="text" name="username" id="name" size="25">
					</li>
					<li>
						密&nbsp;&nbsp;&nbsp;码：&nbsp;
						<input type="text" name="password" id="pwd" size="25">
					</li>
					<li>
						确认密码：&nbsp;
						<input type="text" name="password1" id="pwd1" size="25">
					</li>
					<li>
						出生年月：
						<select name="year" id="year">
							<option value="1992">
								1992
							</option>
							<option value="1993">
								1993
							</option>
							<option value="1994">
								1994
							</option>
							<option value="1995">
								1995
							</option>
							<option value="1996">
								1996
							</option>
							<option value="1997">
								1997
							</option>
							<option value="1998">
								1998
							</option>
							<option value="1999">
								1999
							</option>
							<option value="2000">
								2000
							</option>
							<option value="2001">
								2001
							</option>
						</select>
						&nbsp;—&nbsp;
						<select name="month" id="month">
							<option>
								01
							</option>
							<option>
								02
							</option>
							<option>
								03
							</option>
							<option>
								04
							</option>
							<option>
								05
							</option>
							<option>
								06
							</option>
							<option>
								07
							</option>
							<option>
								08
							</option>
							<option>
								09
							</option>
							<option>
								10
							</option>
							<option>
								11
							</option>
							<option>
								12
							</option>
						</select>

					</li>
					<li>
						性&nbsp;&nbsp;&nbsp;别：&nbsp;
						<input type="radio" name="gender" id="gender" value="男">
						男&nbsp;&nbsp;
						<input type="radio" name="gender" id="gender" value="女">
						女&nbsp;&nbsp;
					</li>
					<li>
						爱&nbsp;&nbsp;&nbsp;好：&nbsp;
						<input type="checkbox" name="habit" value="游泳">
						游泳
						<input type="checkbox" name="habit" value="跑步">
						跑步
						<input type="checkbox" name="habit" value="唱歌">
						唱歌
						<input type="checkbox" name="habit" value="跳舞">
						跳舞
						<input type="checkbox" name="habit" value="画画">
						画画
						<input type="checkbox" name="habit" value="其他">
						其他
					</li>
					<li>
						邮&nbsp;&nbsp;&nbsp;箱：&nbsp;
						<input type="text" name="email" id="mail" size="25">
					</li>
					<li>
						手&nbsp;&nbsp;&nbsp;机：&nbsp;
						<input type="text" name="telephone" id="telephone" size="25">
					</li>
					<li>
						简&nbsp;&nbsp;&nbsp;介：&nbsp;
						<textarea rows="10" cols="25" name="introduce">这个人很懒，什么都没留下~~</textarea>
					</li>
					<li>
						<input type="reset" value="清  空">
						<input type="submit" value="提  交">
					</li>
				</ul>
			</form>
		</div>
	</body>
</html>
