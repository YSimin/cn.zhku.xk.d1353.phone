package cn.edu.zhku.jsj.user.Service;


import cn.edu.zhku.jsj.user.Dao.RegDao;
import cn.edu.zhku.jsj.user.model.User;

public class RegService {
	/**
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 * 该方法检测用户名和密码，并返回一个boolean对象，
	 * 如果返回true表示用户名和密码存在
	 * 如果返回false表示不存在
	 */
    public boolean checkUserNameAndPassword(User user) throws Exception{
    	
    	RegDao rd = new RegDao();
    	
    	boolean result = false;
    	User newUser = new User();
    	
    	newUser = rd.getUserByName(user);
    	
    	//如果返回值不为空，表示可以得到一个用户名和密码相匹配的值
    	if( newUser.getUserName() != null){
    		result = true;
    	}
    	return result;
    }
    
      public boolean addUserSuccess(User user) throws Exception{
    	
    	RegDao rd = new RegDao();
    	
    	boolean result = false;
    	User newUser = new User();
    	
    	newUser = rd.addUser(user);
    	
    	//如果返回值不为空，表示可以得到一个用户名和密码相匹配的值
    	if( newUser.getUserName() != null){
    		result = true;
    	}
    	return result;
    }

}
