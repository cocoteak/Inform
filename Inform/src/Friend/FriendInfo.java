package Friend;
import java.sql.*;
public class FriendInfo {

	        private String name;//好友名
			private String gender;
			private String age;
			private String tel;
			private String mail;
			private String uname;//修改后的好友名
			

			private String Username;//用户名
			
			boolean flag1=false;
		    boolean flag2=false;
		    boolean flag3=false;

		public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public String getGender() {
				return gender;
			}

			public void setGender(String gender) {
				this.gender = gender;
			}

			public String getAge() {
				return age;
			}

			public void setAge(String age) {
				this.age = age;
			}

			public String getTel() {
				return tel;
			}

			public void setTel(String tel) {
				this.tel = tel;
			}

			public String getMail() {
				return mail;
			}

			public void setMail(String mail) {
				this.mail = mail;
			}


		    public String getUname() {
				return uname;
			}

			public void setUname(String uname) {
				this.uname = uname;
			}
			
		    public String getUsername() {
					return Username;
				}

			public void setUsername(String username) {
					Username = username;
				}

	void add(){//添加好友
		try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/information";
					Connection con = DriverManager.getConnection(url, "root", "1234");
					Statement st = con.createStatement();

					String sql = "select * from friend where name='" + getName() + "'";
					ResultSet rs = st.executeQuery(sql);
					if (rs.next()) {// 好友已存在
						this.flag1 = true;
					} else {// 添加好友
						String sql1 = "insert into friend values('" + getName() + "','" + getGender() + "','" + getAge()+ "','" + getTel() + "','"+ getMail() + "','" + getUsername() + "')";
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


	void update() {// 修改好友信息
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";
			Connection con = DriverManager.getConnection(url, "root", "123456");
			Statement st = con.createStatement();
						
				if (getUname().equals(getName())) {// 未更改好友名
					String sql1 = "update friend set gender='" + getGender()
							+ "',age='" + getAge() + "',tel='" + getTel()
							+ "',address='" + getMail() + "' where name='"
							+ getName() + "'";
					int rs1 = st.executeUpdate(sql1);
					System.out.println(rs1);
				} else {// 已更改好友名
					String sql1 = "update friend set name='" + getUname()
							+ "',gender='" + getGender() + "',age='" + getAge()
							+ "',tel='" + getTel() + "',email='" + getMail()
							+ "' where name='" + getName() + "'";
					int rs1 = st.executeUpdate(sql1);
					System.out.println(rs1);
				}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

		void delete(){//删除好友信息
		try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3306/information";
					Connection con = DriverManager.getConnection(url, "root", "123456");
					Statement st = con.createStatement();

					String sql = "select * from friend info where name='" + getName() + "'";
					ResultSet rs = st.executeQuery(sql);
					if (rs.next()) {// 好友存在
						String sql1 = "delete from friend where name='" + getName() + "'"; //按条件删除数据
						st.executeUpdate(sql1);
					} else {// 好友不存在
						this.flag2 = true;
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
