package Receipt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class receipts {
	private String title;// ������
	private String context;// ��������
	private String userName;// �û���
	boolean flag1=false;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	void add(){ //����
		try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/information";
					Connection con = DriverManager.getConnection(url, "root", "1234");
					Statement st = con.createStatement();

					String sql = "select * from receipt where titile='"+getTitle()+"'";
					ResultSet rs = st.executeQuery(sql);
					if (rs.next()) {// �����Ѵ���
						this.flag1 = true;
					} else {// ��������
						String sql1 = "insert into receipt values('"+getTitle()+"','"+getUserName()+"')";
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

}
