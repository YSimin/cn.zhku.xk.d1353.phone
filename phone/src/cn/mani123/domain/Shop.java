package cn.mani123.domain;
// default package

import java.util.HashSet;
import java.util.Set;


/**
 * AbstractShop entity provides the base persistence definition of the Shop entity. @author MyEclipse Persistence Tools
 */

public class Shop{


    // Fields    

     private Integer id;
     private Account account;
     private String name;
     private String score;
     private String address;
     private Set products = new HashSet(0);


    // Constructors

    /** default constructor */
    public Shop() {
    }

    
    /** full constructor */
    public Shop(Account account, String name, String score, String address, Set products) {
        this.account = account;
        this.name = name;
        this.score = score;
        this.address = address;
        this.products = products;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Account getAccount() {
        return this.account;
    }
    
    public void setAccount(Account account) {
        this.account = account;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getScore() {
        return this.score;
    }
    
    public void setScore(String score) {
        this.score = score;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public Set getProducts() {
        return this.products;
    }
    
    public void setProducts(Set products) {
        this.products = products;
    }
   








}