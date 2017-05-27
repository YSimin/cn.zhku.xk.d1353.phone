package cn.edu.zhku.jsj.user.Service;

import cn.edu.zhku.jsj.user.Dao.LoginDao;
import cn.edu.zhku.jsj.user.model.User;

public class LoginService {
	
	
	/**
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 * �÷�������û�������룬������һ��boolean����
	 * ����true��ʾ�û�����������
	 * ����false��ʾ������
	 */
    public boolean checkUserNameAndPassword(User user) throws Exception{
    	
    	LoginDao ld = new LoginDao();
    	
    	boolean result = false;
    	User newUser = new User();
    	
    	newUser = ld.getUserByName(user);
    	
    	//����ֵ��Ϊ�գ���ʾ���Եõ�һ���û����������ƥ���ֵ
    	if( newUser.getUserName() != null){
    		result = true;
    	}
    	return result;
    }

	public int getAccountId(User user) throws Exception {
		LoginDao ld = new LoginDao();
		User user1 = ld.getUserByName(user);
		return user1.getid();
	}

	public int countOrderByAccount(int id) {
		LoginDao ld = new LoginDao();
		return ld.countOrderByAccount(id);
	}
    
    
   
//    public static void main(String[] args) {
//    	
//    	LoginDao ld = new LoginDao();
//    	
//		try {
//			if(ld.judge("root", "091821ysm")){
//				System.out.println("��¼�ɹ���");
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}

}
