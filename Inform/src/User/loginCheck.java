package User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginCheck extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name = new String(request.getParameter("uname").getBytes(
				"iso-8859-1"), "utf-8");
		String pwd = request.getParameter("upwd");

		date d = new date();
		d.setName(name);
		d.setPwd(pwd);

		d.login();
		
		if (d.flag2 == true) {
			out.print("�û������ڣ�����ע�ᣡ");
			response.setHeader("refresh", "3;url=Login/register.jsp");
		} else if (d.flag3 == true) {
			out.print("�û��������벻ƥ�䣬���������룡");
			response.setHeader("refresh", "3;url=Login/login.jsp");
		} else {
			request.getSession().setAttribute("date",d);
			request.getSession().setAttribute("flag","false");
			out.print("��¼�ɹ������Ժ�");
			response.setHeader("refresh", "3;url=Main/main.jsp");
		}
	}

}
