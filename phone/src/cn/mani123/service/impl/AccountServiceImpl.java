package cn.mani123.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.mani123.dao.AccountDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;
import cn.mani123.domain.Shop;
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

	@Override
	//卖家待评论方法
	public List<Product> getShopWaitComment(Integer id) {
		return accountDao.getShopWaitComment(id);
	}

	@Override
	//卖家已评论方法
	public List<Product> getShopCommented(Integer id) {
		return accountDao.getShopCommented(id);
	}

	@Override
	//卖家接收到的商品信息
	public List<Product> getShopOrder(Integer id) {
		return accountDao.getShopOrder(id);
	}

	@Override
	//卖家未发货订单
	public List<Product> getShopWaitPayProduct(Integer id) {
		return accountDao.getShopWaitPayProduct(id);
	}

	@Override
	//卖家已发货待收货订单
	public List<Product> getShopWaitConfirm(Integer id) {
		return accountDao.getShopWaitConfirm(id);
	}

	@Override
	//卖家成功付款界面
	public List<Product> getShopClosed(Integer id) {
		return accountDao.getShopClosed(id);
	}

	@Override
	//买家成功付款界面
	public List<Product> getClosed(Integer id) {
		return accountDao.getClosed(id);
	}

	@Override
	//获得商品评分列表
	public List<String> getProductScore(List<Product> product,Integer id) {
		List<String> list = new ArrayList<String>();
		Account account  = accountDao.findById(id);
		for (int i = 0; i < product.size(); i++) {			
			String score = accountDao.getProductScore(product.get(i),account);
			if(score!=null){
				list.add(score);
			}
			else{
				list.add("0.0");
			}
			
		}
		return list;
	}

	@Override
	//获得商店中的获得的商品评分
	public List<String> getShopProductScore(List<Product> product, Integer id) {
		List<String> list = new ArrayList<String>();
		for (int i = 0; i < product.size(); i++) {			
			Order order = accountDao.getShopCommentedOrder(product.get(i));
			if(order!=null){
				list.add(order.getScore());
			}
			else{
				list.add("0");
			}			
		}
		return list;
	}

	@Override
	//根据买家id和商品列表获得买家的订单数量集合
	public List<Integer> productNum(Integer id, List<Product> product,int status) {
		Account account = accountDao.getAccount(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = accountDao.getCartOrder(account, product.get(i),status);
			if(order!=null){
				list.add(order.getNum());
			}
			else{
				list.add(0);
			}
		}
		return list;
	}

	@Override
	//买家所有订单商品的数量集合
	public List<Integer> allProductNum(Integer id, List<Product> product,int status) {
		Account account = accountDao.getAccount(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = accountDao.getAllCartOrder(account, product.get(i),status);
			if(order!=null){
				list.add(order.getNum());
			}
			else{
				list.add(0);
			}
		}
		return list;
	}
	
	@Override
	//卖家所有订单商品的数量集合
	public List<Integer> shopAllProductNum(Integer id, List<Product> product,
			int status) {
		Shop shop = accountDao.getShop(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = accountDao.getAllShopOrder(shop, product.get(i),status);		
			if(order!=null){
				list.add(order.getNum());
			}
			else{
				list.add(0);
			}
		}
		return list;
	}	

	@Override
	//买家已成交订单的商品数量集合
	public List<Integer> closeProductNum(Integer id, List<Product> product) {
		Account account = accountDao.getAccount(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = accountDao.getcloseCartOrder(account, product.get(i));
			if(order!=null){
				list.add(order.getNum());
			}
			else{
				list.add(0);
			}
		}
		return list;
	}

	@Override
	//商店中商品数量的列表
	public List<Integer> shopProductNum(Integer id, List<Product> product,
			int status) {
		Shop shop = accountDao.getShop(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = accountDao.getShopOrderByThree(shop, product.get(i),status);
			if(order!=null){
				list.add(order.getNum());
			}
			else{
				list.add(0);
			}
		}
		return list;
	}

	@Override
	//卖家已成交订单的商品数量集合
	public List<Integer> shopCloseProductNum(Integer id, List<Product> product) {
		Shop shop = accountDao.getShop(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = accountDao.getShopCloseProductNum(shop, product.get(i));
			if(order!=null){
				list.add(order.getNum());
			}
			else{
				list.add(0);
			}
		}
		return list;
	}

	
	
}
