package cn.mani123.service;

import cn.mani123.domain.Account;

public interface AccountService {

	public Account getUserInfo(int id);

	public Account findById(Integer id);

	public void update(Account account);

	public void passwordUpdate(int id, String password);

	public boolean findByIdAndPass(int id, String password);

	public boolean vaildId(int id);

	public int countOrderByAccount(Integer id);

}
