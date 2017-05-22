package cn.mani123.service.impl;

import java.util.List;

import cn.mani123.dao.CartDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Cart;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;
import cn.mani123.service.CartService;

public class CartServiceImpl implements CartService{

	private CartDao cartDao;

	//通过set方法引入cartDao
	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	//计算订单数量
	@Override
	public int countOrder() {
		return cartDao.countOrder();
	}

	//获取商品列表
	@Override
	public List<Product> getProduct(Integer id) {	
		return cartDao.getProduct(id);
		//return cartDao.get(id);
	}

	//获取订单列表
	@Override
	public List<Order> getOrder(Integer id) {
		cartDao.getOrder(id);
		return null;
	}

	//获取购物车列表
	@Override
	public List<Cart> getCart(Integer id) {
		return cartDao.getCart(id);
	}

	//结算信息
	@Override
	public void clear(String[] id ,int i) {
		String[] idtest = id[0].split(","); 
		for (int j = 0; j < idtest.length; j++) {
			System.out.println("service.clear==================="+idtest[j]+"");		
			List<Order> list = cartDao.getOrderByDouble(idtest[j], i);
			cartDao.clear(list);
		}			
	}

	//通过account_id获取订单编号
	@Override
	public int getOrderNo(Integer id) {
		
		return cartDao.getOrderNo(id);
	}

	@Override
	public int countOrderByAccount(Integer id) {
		return cartDao.countOrderByAccount(id);
	}

	@Override
	//删除订单
	public void delete(Integer id, int i) {	
		List<Order> list = cartDao.getOrderByDouble(id, i);
		cartDao.delete(list);		
	}

	@Override
	public void add(Integer product_id, Integer id) {
		Order order = new Order();
		order.setAccount(cartDao.getAccount(id));
		order.setProduct(cartDao.getProductById(product_id));
		order.setNum(1);
		order.setStatus(1);
		cartDao.add(order);
	}
	
}
