package cn.edu.zhku.li.phone.Service;

import cn.edu.zhku.li.phone.Dao.GoodsDao;
import cn.edu.zhku.li.phone.User.GoodsUser;



public class GoodsService {
	public boolean checkId(GoodsUser user) throws Exception{
		GoodsDao gd=new GoodsDao();
		
		boolean result=false;
		GoodsUser newUser=new GoodsUser();
		
		newUser=gd.getUserById(user);
	    
		if(newUser.getId()!=null){
			result=true;
		}
		return result;	
		
	}


	
	
	}

