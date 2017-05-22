package cn.mani123.service;

import java.util.List;

import cn.mani123.domain.Account;
import cn.mani123.domain.Product;

public interface AccountService {

	public Account getUserInfo(int id);

	public Account findById(Integer id);

	public void update(Account account);

	public void passwordUpdate(int id, String password);

	public boolean findByIdAndPass(int id, String password);

	public boolean vaildId(int id);

	public int countOrderByAccount(Integer id);

	public List<Product> getWaitPayProduct(Integer id);

	public List<Product> getWaitConfirm(Integer id);

	public List<Product> getOrder(Integer id);

	public List<Product> getWaitComment(Integer id);

	public List<Product> getCommented(Integer id);

	public int getUser(Integer id);

}
