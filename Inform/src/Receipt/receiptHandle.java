package Receipt;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Friend.FriendInfo;

public class receiptHandle extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String title = new String(request.getParameter("title").getBytes(
				"iso-8859-1"), "utf-8");
		String context = new String(request.getParameter("context").getBytes(
				"iso-8859-1"), "utf-8");
		String userName = (String) request.getSession().getAttribute("oldName");

		receipts r = new receipts();
		r.setTitle(title);
		r.setContext(context);
		r.setUserName(userName);
		r.add();

		if (r.flag1 == true) {
			out.print("帖子已存在，请重新发帖！");
			response.setHeader("refresh", "3;url=navi/receipt.jsp");
		} else {
			HttpSession session = request.getSession();
			ArrayList receipt = (ArrayList) session.getAttribute("receipt");
			if (receipt == null) receipt = new ArrayList();
			receipt.add(r);
			session.setAttribute("receipt", receipt);
			out.println("<script>window.location.href='Main/bottom.jsp';</script>");
		}
	}
}
