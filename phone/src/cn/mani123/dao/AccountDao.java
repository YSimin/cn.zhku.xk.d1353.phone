package cn.mani123.dao;

import java.util.List;

import cn.mani123.domain.Account;
import cn.mani123.domain.Product;

public interface AccountDao {

	public Account getUserInfo(int id);

	public Account findById(Integer id);

	public void update(Account account);

	public void passwordUpdate(Account account);

	public boolean findIdAndPass(int id, String password);

	public int countOrderByAccount(Integer id);

	public List<Product> getWaitPayProduct(Integer id);

	public List<Product> getWaitConfirm(Integer id);

	public List<Product> getOrder(Integer id);

	public List<Product> getWaitComment(Integer id);
	
	public List<Product> getCommented(Integer id);

	public Account getAccount(Integer id);

}
