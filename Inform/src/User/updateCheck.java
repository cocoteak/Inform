package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class updateCheck extends HttpServlet {

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = new String(request.getParameter("upName").getBytes("iso-8859-1"), "utf-8");
		String gender = new String(request.getParameter("upGender").getBytes("iso-8859-1"), "utf-8");
		String year = request.getParameter("upYear");
		String month = request.getParameter("upMonth");
		String tel = request.getParameter("upTel");
		String mail = request.getParameter("upEmail");
		String introduce = new String(request.getParameter("upIntroduce").getBytes("iso-8859-1"), "utf-8");
		
		String habits[] = request.getParameterValues("upHabit");
		Vector habit = new Vector();
		for (int i = 0; i<habits.length; i++) {
			String s = new String(habits[i].getBytes("iso-8859-1"), "utf-8");
			habit.add(s);
		}
		
		String oldName=(String) request.getSession().getAttribute("oldName");
		
		date d = new date();
		d.setOldName(oldName);
		d.setName(name);
		d.setGender(gender);
		d.setYear(year);
		d.setMonth(month);
		d.setTel(tel);
		d.setMail(mail);
		d.setIntroduce(introduce);
		d.setHabit(habit);
		d.update();
		
		if (d.flag4== true) {
			out.print("用户已存在，请重新修改用户名！");
		}

		else {
			request.getSession().setAttribute("flag","true");
			request.getSession().setAttribute("newUser", d);
			response.setHeader("refresh", "3;url=Info/secess.jsp");
		}
	}

}
