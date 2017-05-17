package cn.mani123.dao;

import java.util.List;

import cn.mani123.domain.Account;
import cn.mani123.domain.Cart;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;

public interface CartDao {

	public List<Product> getProduct(Integer id);
	
	public List<Order> getOrder(Integer id);
	
	public List<Order> getOrderByDouble(Integer id ,int i);

	public int countOrder();
	
	public int countOrderByAccount(Integer id);

	public List<Cart> getCart(Integer id);

	public void clear(String[] id, int i);

	public int getOrderNo(Integer id);

	public void clear(List<Order> list);

	public List<Order> getOrderByDouble(String string, int i);

	public void delete(String id, int i);

	public void delete(List<Order> list);

	public Account getAccount(Integer id);

	public Product getProductById(Integer product_id);

	public void add(Order order);

}
