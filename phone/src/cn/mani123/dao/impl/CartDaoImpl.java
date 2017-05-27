package cn.mani123.dao.impl;

import java.util.List;

import org.aspectj.weaver.ast.And;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.mani123.domain.Account;
import cn.mani123.domain.Cart;
import cn.mani123.domain.Product;
import cn.mani123.domain.Order;
import cn.mani123.domain.Shop;

public class CartDaoImpl extends HibernateDaoSupport implements cn.mani123.dao.CartDao {

	
	@Override
	//通过account_id获取商品列表
	public List<Product> getProduct(Integer id) {
		String hql = "from Product where id in (select product from Order where account = " + id + "and status = 1)";
		List<Product> list = this.getHibernateTemplate().find(hql);
		return list;
	}

	
	@Override
	//通过account_id获得订单列表
	public List<Order> getOrder(Integer id) {
		 String hql = "from Order where account = " + id;
			List<Order> list = this.getHibernateTemplate().find(hql);
		 return list;
	}

	
	@Override
	//获得用户的订单数量
	public int countOrder() {
		String hql = "select count(*) from Order";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	
	@Override
	//获取用户的购物车列表
	public List<Cart> getCart(Integer id) {
		String sql = "select name ,version, memory , color , price from Product where id = (select product from Order where account = "+ id + ")";
		List<List> list = (List<List>) this.getHibernateTemplate().find(sql);
		return null;
	}

	
	@Override
	//清算
	public void clear(String[] id,int i) {
		for (int j = 0; j < id.length; j++) {			
			String hql = "delete from Order where product = " + id[j] + "and account = " + i;
			this.getHibernateTemplate().update(hql);
		}				
	}

	
	@Override
	//通过account_id获得orderno订单编号
	public int getOrderNo(Integer id) {
		String hql = "select orderno from Order where account = " + id;
		List list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			//System.out.println("orderno=-----orderno=---------orderno=------"+list.get(0));
			//return (Integer) list.get(0);
		}		
		return 0;
	}

	
	//通过account_id和product_id获得订单列表
	@Override
	public List<Order> getOrderByDouble(Integer id, int i) {
		List<Order> list = null;
		String hql = "from Order where account = " + i + "and product = " + id ;
		list = this.getHibernateTemplate().find(hql);
		return list;
	}

	
	@Override
	//结算
	public void clear(List<Order> list) {
		for (int i = 0; i < list.size(); i++) {
			Order order = list.get(i);
			order.setStatus(2);//已付款，待发货
			this.getHibernateTemplate().update(order);
		}
		
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
	//商品id为String类型
	public List<Order> getOrderByDouble(String string, int i) {
		List<Order> list = null;
		String hql = "from Order where account = " + i + "and product = " + string ;
		list = this.getHibernateTemplate().find(hql);
		return list;
			
	}

	
	@Override
	public void delete(String id, int i) {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	//删除订单
	public void delete(List<Order> list) {	
		for (int i = 0; i < list.size(); i++) {
			this.getHibernateTemplate().delete(list.get(i)); 
		}	
	}

	
	@Override
	//通过用户id获得用户对象
	public Account getAccount(Integer id) {
		return this.getHibernateTemplate().get(Account.class, id);
	}

	
	@Override
	//通过商品id获得商品对象
	public Product getProductById(Integer id) {
		return this.getHibernateTemplate().get(Product.class, id);
	}

	
	@Override
	//通过一个Order对象，添加订单信息
	public void add(Order order) {
		this.getHibernateTemplate().save(order);		
	}


	@Override
	//通过商品id查找商店id
	public Shop getShopByProduct(Integer product_id) {
		Product product = this.getHibernateTemplate().get(Product.class, product_id);
		return product.getShop();
	}


	@Override
	//查找
	public void pay(Integer id, Integer product_id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	//通过商店id和商品id查找订单表
	public Order getShopOrder(Integer id, Integer product_id) {
		String hql = "from Order where shop = (select id from Shop where account = " + id + ") and product = " + product_id + "and status = 2" ;
		List<Order> list =  this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0);
		}
		else return null;
	}


	@Override
	//更新订单信息
	public void updateOrder(Order order) {
		this.getHibernateTemplate().update(order);
	}


	@Override
	//订单收货
	public Order getAccountOrder(Integer id, Integer product_id) {
		String hql = "from Order where account = " + id + " and product = " + product_id + "and status = 3" ;//查找用户待收货的订单
		List<Order> list =  this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0);
		}
		else return null;
	}


	@Override
	//获取待评分订单
	public Order getWaitCommentOrder(Integer id, Integer product_id) {
		String hql = "from Order where account = " + id + "and product = " + product_id + "and status = 4";//查找用户
		List<Order> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
		
	}


	@Override
	//获取已评价订单的数量
	public int getCommentedCount(Shop shop) {
		String hql = "from Order where shop = ? and status = 5";
		List<Order> list = this.getHibernateTemplate().find(hql,shop);
		return list.size();
	}


	@Override
	//获取商店对象
	public Shop getShop(Integer product_id) {
		String hql = "from Shop where id = (select shop from Product where id = "+product_id+")";
		List<Shop> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}


	@Override
	//根据account和product对象获得订单信息
	public Order getCartOrder(Account account, Product product) {
		String hql = "from Order where account = ? and product = ? and status = 1";
		List<Order> list = this.getHibernateTemplate().find(hql, account,product);
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}


	@Override
	//更新shop对象
	public void updateShop(Shop shop) {
		this.getHibernateTemplate().update(shop);
		
	}
	
}
