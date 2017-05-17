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
}
