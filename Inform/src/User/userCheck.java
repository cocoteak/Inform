package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class userCheck extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		String name = new String(request.getParameter("username").getBytes(
				"iso-8859-1"), "utf-8");
		String pwd = request.getParameter("password");
		String gender = new String(request.getParameter("gender").getBytes(
				"iso-8859-1"), "utf-8");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String tel = request.getParameter("telephone");
		String mail = request.getParameter("email");
		String introduce = new String(request.getParameter("introduce")
				.getBytes("iso-8859-1"), "utf-8");
		String habits[] = request.getParameterValues("habit");
		Vector habit = new Vector();
		for (int i = 0; i < habits.length; i++) {
			String s = new String(habits[i].getBytes("iso-8859-1"), "utf-8");
			habit.addElement(s);
		}

		date d = new date();
		d.setName(name);
		d.setPwd(pwd);
		d.setGender(gender);
		d.setYear(year);
		d.setMonth(month);
		d.setTel(tel);
		d.setMail(mail);
		d.setIntroduce(introduce);
		d.setHabit(habit);
		d.register();

		if (d.flag1== true) {
			out.print("�û��Ѵ��ڣ�������ע���û���");
			response.setHeader("refresh", "3;url=Login/register.jsp");
		}

		else {
			out.print("ע��ɹ������ڽ�ת������¼ҳ��");
			response.setHeader("refresh", "3;url=Login/login.jsp");
		}
	}

}
