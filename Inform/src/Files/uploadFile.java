package Files;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jspsmart.upload.*;
import javax.servlet.jsp.*;

public class uploadFile extends HttpServlet {

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
		//����pageContext����
		   PageContext pageContext =JspFactory.getDefaultFactory().getPageContext(this, request, response, null, true, 8192, true);
		 try {
			    PrintWriter out=response.getWriter();
				//1.ʵ����SmartUpload��
				SmartUpload load=new SmartUpload();
				//2.��ʼ��
				load.initialize(pageContext);
				 //3.�ϴ�
			    load.upload();
			    //4.ָ���ϴ�λ��
				// load.save("d:\\");
				 
				File f=load.getFiles().getFile(0);
				String fileName=new String(f.getFileName().getBytes("GBK"),"utf-8");
				f.saveAs("files/"+fileName);
				
				//�����ݱ�����JavaBean
				String userName=(String)request.getSession().getAttribute("oldName");
				FilesMa file=new FilesMa();
				file.setFileName(fileName);
				file.setUserName(userName);
				file.upload();
				
				if(file.flag1){
					out.println("<script>alert('�ļ��Ѵ���,��ѡ���������ļ�');window.location.href='File/upload.jsp';</script>");
					//response.sendRedirect("File/upload.jsp");
				}else{
					out.println("<script>window.location.href='File/select.jsp';</script>");
				}
				
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
