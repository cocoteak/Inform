package Friend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateFriends extends HttpServlet {

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

		String userName=(String) request.getSession().getAttribute("oldName");
		String uname =(String) request.getSession().getAttribute("uname");//¾ÉºÃÓÑÃû
		String name = new String(request.getParameter("ufName").getBytes("iso-8859-1"), "utf-8");
		String gender = new String(request.getParameter("ufGender").getBytes("iso-8859-1"), "utf-8");
		String age = request.getParameter("ufAge");
		String tel = request.getParameter("ufTel");
		String mail = request.getParameter("ufEmail");
		
		FriendInfo f = new FriendInfo();
		f.setUsername(userName);
		f.setUname(uname);
		f.setName(name);
		f.setGender(gender);
		f.setAge(age);
		f.setTel(tel);
		f.setMail(mail);
		f.update();
		
	    response.setHeader("refresh", "3;url=Friend/secess.jsp");
		
	}
}
