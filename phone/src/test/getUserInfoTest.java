package test;

import org.junit.Test;

import cn.mani123.action.AccountAction;
import cn.mani123.dao.AccountDao;
import cn.mani123.dao.CartDao;
import cn.mani123.dao.impl.AccountDaoImpl;
import cn.mani123.dao.impl.CartDaoImpl;
import cn.mani123.domain.Account;
import cn.mani123.service.AccountService;
import cn.mani123.service.impl.AccountServiceImpl;

public class getUserInfoTest {

	@Test
	public void testUserInfo(){
		AccountAction accountAction  = new AccountAction();
		//accountAction.getUserInfo(1);
		//System.out.println(account.getId()+account.getUsername()+account.getAddress()+account.getBirthday());
	}
	
	@Test
	public void testUserInfoService(){
		AccountService accountService  = new AccountServiceImpl();
		Account account = accountService.getUserInfo(1);
		System.out.println(account.getId()+account.getUsername()+account.getAddress()+account.getBirthday());
	}
	
	@Test
	public void testUserInfoDao(){
		AccountDaoImpl accountService  = new AccountDaoImpl();
		//accountService.test();
		//System.out.println(account.getId()+account.getUsername()+account.getAddress()+account.getBirthday());
	}
	
	@Test
	public void test(){
		System.out.println(Account.class);
	}
	
	@Test
	public void testDao(){
		CartDao cartDao = new CartDaoImpl();
		cartDao.getOrder(1);
		//System.out.println(Account.class);
	}
	
	public static void main(String[] args) {
		getUserInfoTest getUserInfoTest = new getUserInfoTest();
		getUserInfoTest.testDao();
	}
}
