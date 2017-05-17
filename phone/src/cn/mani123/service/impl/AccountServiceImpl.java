package cn.mani123.service.impl;

import java.util.Date;

import cn.mani123.dao.AccountDao;
import cn.mani123.domain.Account;
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
	
}
