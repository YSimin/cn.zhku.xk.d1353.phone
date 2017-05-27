package cn.edu.zhku.jsj.user.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import cn.edu.zhku.jsj.Util.ConnectionManager;
import cn.edu.zhku.jsj.user.model.Shop;

public class AdminDao {
	public Shop getUserById(Shop shop) throws Exception {
		Shop newShop = new Shop();

		Connection conn = null;
		PreparedStatement ps = null;
		

		// 连接数据库
		conn = ConnectionManager.getConnection();

		if (conn == null) {
			throw new Exception("数据库连接不成功！");
		}

		String sqlQuery = "delete from shop where id=?";
		
		ps = conn.prepareStatement(sqlQuery);

		ps.setInt(1, shop.getId());
		

		int result = ps.executeUpdate();
		
		

		if (result == 1) {
			int id=shop.getId();
			
			newShop.setId(id);
			
		}
		return newShop;

}

}
