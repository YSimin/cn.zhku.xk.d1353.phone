package cn.edu.zhku.jsj.user.Service;


import cn.edu.zhku.jsj.user.Dao.RegDao;
import cn.edu.zhku.jsj.user.model.User;

public class RegService {
	/**
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 * �÷�������û��������룬������һ��boolean����
	 * �������true��ʾ�û������������
	 * �������false��ʾ������
	 */
    public boolean checkUserNameAndPassword(User user) throws Exception{
    	
    	RegDao rd = new RegDao();
    	
    	boolean result = false;
    	User newUser = new User();
    	
    	newUser = rd.getUserByName(user);
    	
    	//�������ֵ��Ϊ�գ���ʾ���Եõ�һ���û�����������ƥ���ֵ
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
    	
    	//�������ֵ��Ϊ�գ���ʾ���Եõ�һ���û�����������ƥ���ֵ
    	if( newUser.getUserName() != null){
    		result = true;
    	}
    	return result;
    }

}
