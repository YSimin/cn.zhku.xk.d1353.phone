package cn.mani123.domain;
// default package


public class Order{

    // Fields    

     private Integer orderno;
     private Product product;
     private Account account;
     private Integer num;
     private Integer status;


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
    public Order(Product product, Account account, Integer num, Integer status) {
        this.product = product;
        this.account = account;
        this.num = num;
        this.status = status;
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

    public Integer getStatus() {
        return this.status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
   




}