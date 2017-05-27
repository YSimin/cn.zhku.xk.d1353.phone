package cn.edu.zhku.jsj.user.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;

import cn.edu.zhku.jsj.Util.ConnectionManager;
import cn.edu.zhku.jsj.user.model.User;

public class RegDao {
	
	//�жϸ��û��Ƿ�ע��ĺ���
	public User getUserByName(User user) throws Exception {
		User newUser = new User();

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		// �������ݿ�
		conn = ConnectionManager.getConnection();

		if (conn == null) {
			throw new Exception("���ݿ����Ӳ��ɹ���");
		}

		String sqlQuery = "Select * from account where username = ? && user=?";
		
		ps = conn.prepareStatement(sqlQuery);

		ps.setString(1, user.getUserName());
		ps.setInt(2, user.getUserAccount_id());

		rs =ps.executeQuery();
		
		boolean result = rs.next();

		if (result == true) {
			String username = rs.getString("username");
			String password = rs.getString("password");
			int account_id = rs.getInt("user");
			newUser.setUserName(username);
			newUser.setUserPassword(password);
			newUser.setUserAccount_id(account_id);
		}
		return newUser;
//		
//		if (result == false) {
//			return newUser;
//		}else{
//			String userName = rs.getString("user_name");
//			String userPassword = rs.getString("user_password");
//			newUser.setUserName(userName);
//			newUser.setUserPassword(userPassword);
//			return newUser;
//		}
	}

	//ע�ắ��
	public User addUser(User user) throws Exception {
		User newUser = new User();

		Connection conn = null;
		PreparedStatement ps = null;

		// �������ݿ�
		conn = ConnectionManager.getConnection();

		if (conn == null) {
			throw new Exception("���ݿ����Ӳ��ɹ���");
		}

		String sqlQuery = "insert into account values(null,?,?,null,null,null,null,null,null,?)";
		
		ps = conn.prepareStatement(sqlQuery);

		ps.setString(1, user.getUserName());
		ps.setString(2, user.getUserPassword());
		ps.setInt(3, user.getUserAccount_id());
		
		 int result=ps.executeUpdate();
		 
	        
	        if(result==1)
	        {
	        	String username=user.getUserName();
	    		String password=user.getUserPassword();
	    		int account_id = user.getUserAccount_id();
				newUser.setUserName(username);
				newUser.setUserPassword(password);
				newUser.setUserAccount_id(account_id);
	        	
	        }
	        return newUser;  
	}
}
