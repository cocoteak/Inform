package Files;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FilesMa {
private String fileName;
private String userName;
public String getUserName() {
	return userName;
}

public void setUserName(String userName) {
	this.userName = userName;
}
boolean flag1=false;

public String getFileName() {
	return fileName;
}

public void setFileName(String fileName) {
	this.fileName = fileName;
}

void upload(){
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/information";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		Statement st = con.createStatement();

		String sql = "select * from file where filename='" +  getFileName() + "'";
		ResultSet rs = st.executeQuery(sql);
		if (rs.next()) {// 文件已存在
			this.flag1 = true;
		} else {// 上传文件
			String sql1 = "insert into file values('" + getFileName() + "','" + getUserName() + "')";
			st.executeUpdate(sql1);
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
void delete(){
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/information";
		Connection con = DriverManager.getConnection(url, "root", "1234");
		Statement st = con.createStatement();

		String sql = "delete from file where filename='" +  getFileName() + "'";
		st.executeUpdate(sql);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
