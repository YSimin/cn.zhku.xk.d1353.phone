package cn.mani123.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import cn.mani123.dao.AccountDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;
import cn.mani123.domain.Shop;

public class AccountDaoImpl extends HibernateDaoSupport implements AccountDao {

	@Override
	public Account getUserInfo(int id) {
		
		return this.getHibernateTemplate().get(Account.class, id);
	}

	@Override
	public Account findById(Integer id) {
		return this.getHibernateTemplate().get(Account.class, id);
	}

	@Override
	public void update(Account account) {
		this.getHibernateTemplate().update(account);
		
	}


	@Override
	public void passwordUpdate(Account account) {
		this.getHibernateTemplate().update(account);
		
	}

	@Override
	public boolean findIdAndPass(int id, String password) {
		String hql = "from Account where id = " + id + "and password = " + password;
		List<Account> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			System.out.println(list.get(0).getUsername());
			return true;
		}
		return false;
	}

	@Override
	public int countOrderByAccount(Integer id) {
		String hql = "select count(*) from Order where account = " + id + "and status = 1";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	//返回待发货的商品
	public List<Product> getWaitPayProduct(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + "and status = 2)";
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//返回待收货的商品
	public List<Product> getWaitConfirm(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + "and status = 3)";
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//获取该用户的所有订单
	public List<Product> getOrder(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + "and status != 1)";
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//返回买家的待评价商品页面
	public List<Product> getWaitComment(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + "and status = 4)";
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list; 
	}

	@Override
	//返回用户的已评价商品页面
	public List<Product> getCommented(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + "and status = 5)";
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list; 
	}

	@Override
	//通过用户id返回一个account对象
	public Account getAccount(Integer id) {
		return this.getHibernateTemplate().get(Account.class, id);
	}

	@Override
	//获取卖家待评论的商品对象集合
	public List<Product> getShopWaitComment(Integer id) {
		String hql = "from Product where id in (select product from Order where shop = (select id from Shop where account = " + id + ") and status =4)"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//店铺已评论信息
	public List<Product> getShopCommented(Integer id) {
		String hql = "from Product where id in (select product from Order where shop = (select id from Shop where account = " + id + ") and status =5)"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//卖家所有订单信息
	public List<Product> getShopOrder(Integer id) {
		String hql = "from Product where id in (select product from Order where shop = (select id from Shop where account = " + id + ") and status !=1)"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//卖家未发货订单
	public List<Product> getShopWaitPayProduct(Integer id) {
		String hql = "from Product where id in (select product from Order where shop = (select id from Shop where account = " + id + ") and status =2)"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//卖家待收货订单
	public List<Product> getShopWaitConfirm(Integer id) {
		String hql = "from Product where id in (select product from Order where shop = (select id from Shop where account = " + id + ") and status =3)"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//卖家成功订单信息
	public List<Product> getShopClosed(Integer id) {
		String hql = "from Product where id in (select product from Order where shop = (select id from Shop where account = " + id + ") and (status =4 or status = 5))"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//买家成功订单信息
	public List<Product> getClosed(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + " and (status = 4 or status = 5))"; 
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	//获得用户的商品评分
	public String getProductScore(Product product,Account account) {
		String hql = "from Order where product = ? and account = ? and status = 5";
		List<Order> list = this.getHibernateTemplate().find(hql,product,account);
		return list.get(0).getScore();
	}

	@Override
	//获得商店商品评分
	public String getShopProductScore(Product product, Account account) {
		String hql = "from Order where product = ? and shop = ? and status = 5";
		List<Order> list = this.getHibernateTemplate().find(hql,product,account);
		return list.get(0).getScore();
	}

	@Override
	//通过product对象获得已评论订单
	public Order getShopCommentedOrder(Product product) {
		String hql = "from Order where product = ? and status = 5";
		List<Order> list = this.getHibernateTemplate().find(hql,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	//根据买家id卖家id和订单状态确定
	public Order getCartOrder(Account account, Product product, int status) {
		String hql = "from Order where account = ? and product = ? and status = " + status ;
		List<Order> list = this.getHibernateTemplate().find(hql, account,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	//买家所有订单商品的数量
	public Order getAllCartOrder(Account account, Product product, int status) {
		String hql = "from Order where account = ? and product = ? and status != " + status ;
		List<Order> list = this.getHibernateTemplate().find(hql, account,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	//卖家所有订单商品的数量
	public Order getAllShopOrder(Shop shop, Product product, int status) {
		String hql = "from Order where shop = ? and product = ? and status != " + status;
		List<Order> list = this.getHibernateTemplate().find(hql,shop,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
	@Override
	//返回买家已成交订单
	public Order getcloseCartOrder(Account account, Product product) {
		String hql = "from Order where product = ? and account = ? and (status = 4 or status = 5)";
		List<Order> list = this.getHibernateTemplate().find(hql,product,account);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	//通过用户id查找shop
	public Shop getShop(Integer id) {
		String hql = "from Shop where account = " + id;
		List<Shop> list =  this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	
	@Override
	//通过shop，product，status获得商店的订单
	public Order getShopOrderByThree(Shop shop, Product product, int status) {
		String hql = "from Order where shop = ? and product = ? and status = " + status;
		List<Order> list = this.getHibernateTemplate().find(hql,shop,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	//返回卖家已成交订单
	public Order getShopCloseProductNum(Shop shop, Product product) {
		String hql = "from Order where shop = ? and product = ? and (status = 4 or status = 5)";
		List<Order> list = this.getHibernateTemplate().find(hql,shop,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}

	
	
}



