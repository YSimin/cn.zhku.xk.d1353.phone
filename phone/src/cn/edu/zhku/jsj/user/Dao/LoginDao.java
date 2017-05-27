package cn.edu.zhku.jsj.user.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import cn.edu.zhku.jsj.Util.ConnectionManager;
import cn.edu.zhku.jsj.user.model.User;
import freemarker.core.ReturnInstruction.Return;

public class LoginDao {

	//
	// public boolean judge(String username, String userpass)
	// throws Exception {
	//
	// boolean flag = false;
	//
	// Connection conn = null;
	// PreparedStatement ps = null;
	// ResultSet rs = null;
	//
	// // ������ݿ�
	//
	// // ͨ������ƶ�̬������Ӧ�õ���ݿ����
	// Class.forName("com.mysql.jdbc.Driver");
	// conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ysm",
	// "root", "");
	//
	// String sqlQuery =
	// "Select * from userdata where username = ? && userpass = ?";
	// ps = conn.prepareStatement(sqlQuery);
	//
	// ps.setString(2, username);
	// ps.setString(3, userpass);
	//
	// rs = ps.executeQuery();

	// while(true){
	// boolean re = rs.next();
	// if(re==false)
	// break;
	//
	// String name = rs.getString("user_name");
	// String pwd = rs.getString("user_password");
	//
	// System.out.println(name+"-"+pwd);
	// //bianl rs
	// }
	// if (rs.next()) {
	// String name = rs.getString("username");
	// String pwd = rs.getString("userpass");
	// System.out.println(name + "-" + pwd);
	//
	// flag =true;
	// }

	// boolean result = rs.next();
	//
	// if(result == false){
	// return newUser;
	// }
	//

	// return flag;
	//
	// }

	/**
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 *             �÷���Ϊ��ͨ�����û��������ȥ��ȡ��ݿ� ���ص�userΪ�գ���ʾ���û����벻��
	 *             ���ص�user��Ϊ�գ���ʾ���û�������ȷ
	 */
	public User getUserByName(User user) throws Exception {
		User newUser = new User();

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		// ������ݿ�
		conn = ConnectionManager.getConnection();

		if (conn == null) {
			throw new Exception("��ݿ����Ӳ��ɹ���");
		}

		String sqlQuery = "Select * from account where username = ? && password = ? && user=?";

		ps = conn.prepareStatement(sqlQuery);

		ps.setString(1, user.getUserName());
		ps.setString(2, user.getUserPassword());
		ps.setInt(3, user.getUserAccount_id());

		rs = ps.executeQuery();

		boolean result = rs.next();

		if (result == true) {
			String username = rs.getString("username");
			String password = rs.getString("password");
			int account_id = rs.getInt("user");
			int id = rs.getInt("id");
			newUser.setUserid(id);
			newUser.setUserName(username);
			newUser.setUserPassword(password);
			newUser.setUserAccount_id(account_id);
		}
		return newUser;
		//
		// if (result == false) {
		// return newUser;
		// }else{
		// String userName = rs.getString("user_name");
		// String userPassword = rs.getString("user_password");
		// newUser.setUserName(userName);
		// newUser.setUserPassword(userPassword);
		// return newUser;
		// }
	}

	public int countOrderByAccount(int id) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		// ������ݿ�
		try {
			conn = ConnectionManager.getConnection();
			if (conn == null) {
				throw new Exception("��ݿ����Ӳ��ɹ���");
			}
			String sql = "select count(*) from `order` where account_id = ? and status = 1";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			boolean result = rs.next();
			if(result){
				return rs.getInt(1);
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return 0;
	}

}
