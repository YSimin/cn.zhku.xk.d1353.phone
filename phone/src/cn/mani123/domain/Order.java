
package cn.mani123.domain;
/**
 * AbstractOrder entity provides the base persistence definition of the Order entity. @author MyEclipse Persistence Tools
 */

public class Order{


    // Fields    

     private Integer orderno;
     private Product product;
     private Account account;
     private Integer num;


    // Constructors
     

    /** default constructor */
    public Order() {
    }

    
    /** full constructor */
    public Order(Product product, Account account, Integer num) {
        this.product = product;
        this.account = account;
        this.num = num;
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

    public Integer getNum() {
        return this.num;
    }
    
    public void setNum(Integer num) {
        this.num = num;
    }


	@Override
	public String toString() {
		return "Order [orderno=" + orderno + ", product=" + product
				+ ", account=" + account + ", num=" + num + "]";
	}
  
    
}