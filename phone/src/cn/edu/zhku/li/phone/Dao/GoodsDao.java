package cn.edu.zhku.li.phone.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.zhku.li.phone.User.GoodsUser;
import cn.edu.zhku.li.phone.Util.ConnectionManager;

public class GoodsDao {
	public GoodsUser getUserById(GoodsUser user) throws Exception {
		GoodsUser newuser = new GoodsUser();
	
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		// 连接数据库

		conn = ConnectionManager.getConnection();

		if (conn == null) {

			throw new Exception("数据库连接不成功！");
		}

		String sqlQuery = "Select * from product where id=?";

		ps = conn.prepareStatement(sqlQuery);

		ps.setString(1, user.getId());
		
		rs = ps.executeQuery();
		boolean result;

		result = rs.next();

		if (result == true) {
			String id = rs.getString("id");
            String name = rs.getString("name");
            String version = rs.getString("version");
            String color = rs.getString("color");
            String memory = rs.getString("memory");
            String weight=rs.getString("weight");
            String camera=rs.getString("camera");
            String cpu=rs.getString("cpu");
            String size=rs.getString("size");
            String internet=rs.getString("internet");
            String card=rs.getString("card");
            String HDD=rs.getString("HDD");
            String detail=rs.getString("detail");

			newuser.setId(id);
			newuser.setName(name);
			newuser.setVersion(version);
			newuser.setColor(color);
			newuser.setMemory(memory);
			newuser.setWeight(weight);
			newuser.setCamera(camera);
			newuser.setCpu(cpu);
			newuser.setSize(size);
			newuser.setInternet(internet);
			newuser.setCard(card);
			newuser.setHDD(HDD);
			newuser.setDetail(detail);
		}
		return newuser;
	}
}
