package Files;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteFile extends HttpServlet {

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		doPost(request,response);
}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
        String dname=new String(request.getParameter("dfile").getBytes("iso-8859-1"),"utf-8");
		FilesMa fm=new FilesMa();
		
		fm.setFileName(dname);
		fm.delete();
		
	    File f=new File("files/"+dname);
	    f.delete();
	   
		PrintWriter out=response.getWriter();
		out.println("<script>window.location.href='File/delete.jsp';</script>");
	}

}
