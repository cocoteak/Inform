package Receipt;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class newReceipt extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String title = (String) request.getSession().getAttribute("titleName");
		String newReceipt = new String(request.getParameter("newReceipt").getBytes("iso-8859-1"), "utf-8");
		String userName = (String) request.getSession().getAttribute("oldName");

		newRe r = new newRe();
		r.setTitleName(title);
		r.setUserName(userName);
		r.setNewReceipt(newReceipt);

		// 新留言内容增加
		HttpSession session = request.getSession();
		ArrayList NewReceipt = (ArrayList) session.getAttribute("'" + title+ "'");
		if (NewReceipt == null) NewReceipt = new ArrayList();
		NewReceipt.add(r);
		
		session.setAttribute("'" + title+ "'", NewReceipt);
		session.setAttribute("title", title);
		System.out.print(title);
		
		out.println("<script>window.location.href='navi/showMessage.jsp';</script>");

	}
}
