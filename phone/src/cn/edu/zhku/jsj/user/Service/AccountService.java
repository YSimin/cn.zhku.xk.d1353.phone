package cn.edu.zhku.jsj.user.Service;

import cn.edu.zhku.jsj.user.Dao.AccountDao;

import cn.edu.zhku.jsj.user.model.User;

public class AccountService {
	 public boolean checkDeleteUser(User user) throws Exception{
	    	
	    	AccountDao ad = new AccountDao();
	    	
	    	boolean result = false;
	    	User newUser = new User();
	    	
	    	newUser = ad.getUserById(user);
	    	Integer a=newUser.getid();
	    	//如果返回值不为空，表示可以得到一个用户名和密码相匹配的值
	    	if( a != null){
	    		result = true;
	    	}
	    	return result;
	    }
}
