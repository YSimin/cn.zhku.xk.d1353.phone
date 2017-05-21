package cn.mani123.domain;
// default package

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * AbstractAccount entity provides the base persistence definition of the Account entity. @author MyEclipse Persistence Tools
 */

public class Account{


    // Fields    

     private Integer id;
     private String username;
     private String password;
     private String address;
     private Date birthday;
     private String sex;
     private String email;
     private String telephone;
     private Integer orderId;
     private Integer user;
     private Set orders = new HashSet(0);
     private Set shops = new HashSet(0);


    // Constructors

    /** default constructor */
    public Account() {
    }

    
    /** full constructor */
    public Account(String username, String password, String address, Date birthday, String sex, String email, String telephone, Integer orderId, Integer user, Set orders, Set shops) {
        this.username = username;
        this.password = password;
        this.address = address;
        this.birthday = birthday;
        this.sex = sex;
        this.email = email;
        this.telephone = telephone;
        this.orderId = orderId;
        this.user = user;
        this.orders = orders;
        this.shops = shops;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return this.telephone;
    }
    
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Integer getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUser() {
        return this.user;
    }
    
    public void setUser(Integer user) {
        this.user = user;
    }

    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }

    public Set getShops() {
        return this.shops;
    }
    
    public void setShops(Set shops) {
        this.shops = shops;
    }
   








}