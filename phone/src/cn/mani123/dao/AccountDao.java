package cn.mani123.dao;

import cn.mani123.domain.Account;

public interface AccountDao {

	public Account getUserInfo(int id);

	public Account findById(Integer id);

	public void update(Account account);

	public void passwordUpdate(Account account);

	public boolean findIdAndPass(int id, String password);

	public int countOrderByAccount(Integer id);

}
