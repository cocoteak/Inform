package Files;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;


import com.jspsmart.upload.*;
import com.jspsmart.upload.File;

public class download extends HttpServlet {

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
		PageContext pageContext =JspFactory.getDefaultFactory().getPageContext(this, request, response, null, true, 8192, true);
	    try {
			//1.实例化SmartUpload类
			SmartUpload load=new SmartUpload();
			//2.初始化
			 load.initialize(pageContext);
			 //3.不打开文件，显示下载提示框
			 load.setContentDisposition(null);
			 //4.下载指定文件
			 String dname=new String(request.getParameter("dfile").getBytes("iso-8859-1"),"utf-8");
			 load.downloadFile("files/"+dname);
             
			 System.out.println(dname);
			 response.setHeader("refresh","0;url=File/downloads.jsp");
		     
	    } catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 
	}

}
