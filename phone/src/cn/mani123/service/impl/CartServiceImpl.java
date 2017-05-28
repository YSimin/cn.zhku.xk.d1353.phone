package cn.mani123.service.impl;

import java.util.ArrayList;
import java.util.List;

import cn.mani123.dao.CartDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Cart;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;
import cn.mani123.domain.Shop;
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
	//添加订单,需要修改！！！！
	public void add(Integer product_id, Integer id) {
		Account account  = cartDao.getAccount(id);
		Product product = cartDao.getProductById(product_id);
		Order order = cartDao.getCartOrder(account, product);
		if(order!=null){
			order.setNum(order.getNum()+1);
			cartDao.updateOrder(order);
		}
		else{
		order = new Order();
		order.setAccount(cartDao.getAccount(id));//设置用户
		order.setProduct(cartDao.getProductById(product_id));//设置商品
		order.setNum(1);
		order.setStatus(1);
		order.setShop(cartDao.getShopByProduct(product_id));//设置店铺
		cartDao.add(order);
		}
	}

	@Override
	//订单发货 -----
	public void pay(Integer id, Integer product_id) {
		Order order = cartDao.getShopOrder(id,product_id);//获取原本订单信息
		order.setStatus(3);//修改订单状态
		cartDao.updateOrder(order);
	}

	@Override
	//订单收货
	public void confirm(Integer id, Integer product_id) {
		Order order = cartDao.getAccountOrder(id,product_id);//获取原本订单信息
		order.setStatus(4);//修改订单状态---待评论，已成交
		cartDao.updateOrder(order);		
	}

	@Override
	//用户评分业务处理
	public void comment(Integer id, Integer product_id, String score) {		
		Shop shop = cartDao.getShop(product_id);//获取商店对象
		int count = cartDao.getCommentedCount(shop);//获取总评分条数
		double temp = Double.parseDouble(score);
		temp = (temp + Double.parseDouble(shop.getScore())*count) / (count+1);//计算店铺评分	
		shop.setScore(String.valueOf(temp));//修改店铺评分
		cartDao.updateShop(shop);//更新shop状态
		//更新订单状态
		Order order = cartDao.getWaitCommentOrder(id, product_id);
		order.setStatus(5);
		order.setScore(score);
		cartDao.updateOrder(order);//更新订单状态
	}

	@Override
	//获得购物车每个商品的数量，返回数量的集合
	public List<Integer> productNum(Integer id, List<Product> product) {
		Account account = cartDao.getAccount(id);
		List<Integer> list = new ArrayList<Integer>();
		for (int i = 0; i < product.size(); i++) {
			Order order = cartDao.getCartOrder(account, product.get(i));
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
	//通过搜索商品名搜索商品
	public List<Product> search(String product_name) {
		return cartDao.search(product_name);
	}

	@Override
	//通过搜索商品名搜索商品并按价格排序
	public List<Product> searchByPrice(String product_name) {
		return cartDao.searchByPrice(product_name);
	}
	
}














