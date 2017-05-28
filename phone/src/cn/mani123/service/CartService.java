package cn.mani123.service;

import java.util.List;

import cn.mani123.domain.Cart;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;

public interface CartService {

	int countOrder();

	List<Product> getProduct(Integer id);
	
	List<Order> getOrder(Integer id);

	List<Cart> getCart(Integer id);

	void clear(String[] id, int i);
	
	int getOrderNo(Integer id);

	int countOrderByAccount(Integer id);

	void delete(Integer product_id, int i);

	void add(Integer product_id, Integer id);

	void pay(Integer id, Integer product_id);

	void confirm(Integer id, Integer product_id);

	void comment(Integer id, Integer product_id, String score);

	List<Integer> productNum(Integer id, List<Product> product);

	List<Product> search(String product_name);

	List<Product> searchByPrice(String product_name);
}
