package Friend;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteFriends extends HttpServlet {

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

		String name = new String(request.getParameter("dname").getBytes("iso-8859-1"), "utf-8");
                FriendInfo f = new FriendInfo();
                f.setName(name);
		        f.delete();

		if (f.flag2== true) {
			out.print("好友不存在，请重新输入好友名！");
			response.setHeader("refresh", "3;url=Friend/FriendManager.jsp");
		}

		else {
			response.setHeader("refresh", "3;url=Friend/secess.jsp");
		}
	}

}
