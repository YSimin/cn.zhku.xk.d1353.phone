package cn.edu.zhku.jsj.user.Dao;



import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.edu.zhku.jsj.Util.ConnectionManager;

import cn.edu.zhku.jsj.user.model.User;

public class AccountDao {
	public User getUserById(User user) throws Exception {
		User newUser = new User();

		Connection conn = null;
		PreparedStatement ps = null;
		

		// 连接数据库
		conn = ConnectionManager.getConnection();

		if (conn == null) {
			throw new Exception("数据库连接不成功！");
		}

		String sqlQuery = "delete from account where id=?";
		
		ps = conn.prepareStatement(sqlQuery);

		ps.setInt(1, user.getid());
		

		int result = ps.executeUpdate();
		
		

		if (result == 1) {
			int id=user.getid();
			
			newUser.setUserid(id);
			
		}
		return newUser;

}

}