package cn.mani123.service.impl;

import java.util.Date;
import java.util.List;

import cn.mani123.dao.AccountDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Product;
import cn.mani123.service.AccountService;

public class AccountServiceImpl implements AccountService{

	private AccountDao accountDao;
	private Account account;

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@Override
	public Account getUserInfo(int id) {
		return accountDao.getUserInfo(id);
	}

	@Override
	public Account findById(Integer id) {
		return accountDao.findById(id);
	}

	@Override
	public void update(Account account) {
		accountDao.update(account);
		
	}

	@Override
	public void passwordUpdate(int id, String password) {
		account = accountDao.findById(id);
		account.setPassword(password);
		accountDao.passwordUpdate(account);
		System.out.println("account is not null");
	}

	@Override
	public boolean findByIdAndPass(int id, String password) {
		
		return 	accountDao.findIdAndPass(id,password);
	}

	@Override
	public boolean vaildId(int id) {
		if(accountDao.findById(id)!=null){
			return true;
		}
		return false;
	}

	@Override
	public int countOrderByAccount(Integer id) {
		return accountDao.countOrderByAccount(id);
	}

	@Override
	//返回待发货的商品列表
	public List<Product> getWaitPayProduct(Integer id) {
		return accountDao.getWaitPayProduct(id);
	}

	@Override
	//返回待收货的商品列表
	public List<Product> getWaitConfirm(Integer id) {
		return accountDao.getWaitConfirm(id);
	}

	@Override
	//返回所有订单信息
	public List<Product> getOrder(Integer id) {
		return accountDao.getOrder(id);
	}

	@Override
	//返回用户的待评价商品列表
	public List<Product> getWaitComment(Integer id) {
		return accountDao.getWaitComment(id);
	}

	@Override
	//返回用户已评价的商品列表
	public List<Product> getCommented(Integer id) {
		return accountDao.getCommented(id);
	}

	@Override
	//通过用户id判断是何种权限的用户
	public int getUser(Integer id) {
		//通过id获取用户对象
		Account account = accountDao.getAccount(id);
		//通过对象的get方法获取user权限类型
		return account.getUser();
		
	}
	
}
