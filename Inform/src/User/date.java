package User;

import java.sql.*;
import java.util.Vector;

public class date {
	private String name;
	private String pwd;
	private String gender;
	private String year;
	private String month;
	private String tel;
	private String mail;
	private String introduce;
	private Vector habit;
	private String oldName;

	boolean flag1 = false;// ע�����

	boolean flag2 = false;
	boolean flag3 = false;// ��¼����

	boolean flag4 = false;// ��¼����

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
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

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Vector getHabit() {
		return habit;
	}

	public void setHabit(Vector habit) {
		this.habit = habit;
	}

	String getHabits() {
		String s = "";
		for (int i = 0; i < getHabit().size(); i++) {
			s+= getHabit().get(i) + "-";
		}
		return s;
	}

	public void setOldName(String oldName) {
		this.oldName = oldName;
	}

	public String getOldName() {
		return oldName;
	}

	void register() {// �û�ע��
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";
			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement();

			String sql = "select * from info where name='" + getName() + "'";
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {// �û��Ѵ���
				this.flag1 = true;
			} else {// ע���û�
				String sql1 = "insert into info values('" + getName() + "','"
						+ getPwd() + "','" + getGender() + "','" + getYear()
						+ "','" + getMonth() + "','" + getTel() + "','"
						+ getMail() + "','" + getHabits() + "','"
						+ getIntroduce() + "')";
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

	void login() {// �û���¼
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";
			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement();
			String sql = "select * from info where name='" + getName() + "'";
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {// �û��Ѵ���
				System.out.println(rs.next());
				// �鿴�û����������Ƿ��Ӧ
				String sql1 = "select * from info where name='" + getName()
						+ "' and pwd='" + getPwd() + "'";
				ResultSet rs1 = st.executeQuery(sql1);
				if (rs1.next()) {
					System.out.println(rs1.next());
				} else {// �û��������벻ƥ��
					this.flag3 = true;
				}
			} else {// �û�������
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

	void update() {// �û��޸���Ϣ
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";
			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement();
			if (getOldName().equals(getName())) {// δ�����û���
				String sql1 = "update info set gender='" + getGender()
						+ "',year='" + getYear() + "',month='" + getMonth()
						+ "',email='" + getMail() + "',habit='" + getHabits()
						+ "',introduce='" + getIntroduce() + "' where name='"
						+ getOldName() + "'";
				int rs1 = st.executeUpdate(sql1);
				System.out.println(rs1);
			} else {// �Ѹ����û���
				String sql = "select * from info where name='" + getName()
						+ "'";
				ResultSet rs = st.executeQuery(sql);
				if (rs.next()) {// �û����Ѵ���
					this.flag4 = true;
				} else {// �޸��û���Ϣ
					//���ĺ��ѱ����û���
					String sql2 = "update friend set userName='" + getName()+ "' where userName='" + getOldName() + "'";
			        int rs3 = st.executeUpdate(sql2);
			        System.out.println(rs3);
			        
			      //�����ļ������û���
					String sql3 = "update file set userName='" + getName()+ "' where userName='" + getOldName() + "'";
			        int rs4 = st.executeUpdate(sql3);
			        System.out.println(rs4);
			        
			      //�������ӱ��е��û���
					String sql4 = "update receipt set userName='" + getName()+ "' where userName='" + getOldName() + "'";
			        int rs5 = st.executeUpdate(sql4);
			        System.out.println(rs5);
					
					String sql1 = "update info set name='" + getName()
							+ "',gender='" + getGender() + "',year='"
							+ getYear() + "',month='" + getMonth()
							+ "',email='" + getMail() + "',habit='"
							+ getHabits() + "',introduce='" + getIntroduce()
							+ "' where name='" + getOldName() + "'";
					int rs1 = st.executeUpdate(sql1);
					System.out.println(rs1);

				}
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	void upPwd() {// �û��޸���Ϣ
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";
			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement();
			String sql = "update info set pwd='" + getPwd() + "' where name='"
					+ getOldName() + "'";
			int rs = st.executeUpdate(sql);
			System.out.println(rs);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
