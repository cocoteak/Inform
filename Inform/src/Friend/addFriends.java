package Friend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import User.date;

public class addFriends extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = new String(request.getParameter("fname").getBytes(
				"iso-8859-1"), "utf-8");
		String gender = new String(request.getParameter("fgender").getBytes(
				"iso-8859-1"), "utf-8");
		String age = request.getParameter("fage");
		String tel = request.getParameter("ftel");
		String mail = request.getParameter("fmail");
		String userName=(String)request.getSession().getAttribute("oldName");
		
		
		FriendInfo f = new FriendInfo();
		f.setName(name);
		f.setGender(gender);
		f.setAge(age);
		f.setTel(tel);
		f.setMail(mail);

		f.setUsername(userName);
		
		f.add();

		if (f.flag1== true) {
			out.print("好友已存在，请重新添加好友！");
			response.setHeader("refresh", "3;url=Friend/FriendManager.jsp");
		}

		else {
			response.setHeader("refresh", "3;url=Friend/secess.jsp");
		}
	
	}

}
