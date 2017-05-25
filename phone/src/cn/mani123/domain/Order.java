package cn.mani123.domain;
// default package

/**
 * AbstractOrder entity provides the base persistence definition of the Order
 * entity. @author MyEclipse Persistence Tools
 */

public class Order{

	// Fields

	private Integer orderno;
	private Product product;
	private Account account;
	private Shop shop;
	private Integer num;
	private Integer status;
	private String score;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Product product, Account account, Integer num) {
		this.product = product;
		this.account = account;
		this.num = num;
	}

	/** full constructor */
	public Order(Product product, Account account, Shop shop,
			Integer num, Integer status, String score) {
		this.product = product;
		this.account = account;
		this.shop = shop;
		this.num = num;
		this.status = status;
		this.score = score;
	}

	// Property accessors

	public Integer getOrderno() {
		return this.orderno;
	}

	public void setOrderno(Integer orderno) {
		this.orderno = orderno;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Shop getShop() {
		return this.shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

}