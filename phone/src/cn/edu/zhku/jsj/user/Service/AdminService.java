package cn.edu.zhku.jsj.user.Service;



import cn.edu.zhku.jsj.user.Dao.AdminDao;

import cn.edu.zhku.jsj.user.model.Shop;



public class AdminService {
	 public boolean checkDeleteShop(Shop shop) throws Exception{
	    	
	    	AdminDao ad = new AdminDao();
	    	
	    	boolean result = false;
	    	Shop newShop = new Shop();
	    	
	    	newShop = ad.getUserById(shop);
	    	Integer a=newShop.getId();
	    	//�������ֵ��Ϊ�գ���ʾ���Եõ�һ���û�����������ƥ���ֵ
	    	if( a != null){
	    		result = true;
	    	}
	    	return result;
	    }
}
