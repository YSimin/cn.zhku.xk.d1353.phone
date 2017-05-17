// default package
package cn.mani123.domain;
import java.util.HashSet;
import java.util.Set;


/**
 * AbstractProduct entity provides the base persistence definition of the Product entity. @author MyEclipse Persistence Tools
 */

public class Product{


    // Fields    

     private Integer id;
     private String name;
     private String version;
     private String color;
     private String price;
     private String img;
     private String memory;
     private String weight;
     private String camera;
     private String length;
     private String width;
     private String height;
     private String cpu;
     private String size;
     private String internet;
     private String graphicscard;
     private String hdd;
     private String detail;
     private String graphicsCard;
     private Set orders = new HashSet(0);


    // Constructors

    /** default constructor */
    public Product() {
    }

	/** minimal constructor */
    public Product(String name) {
        this.name = name;
    }
    
    /** full constructor */
    public Product(String name, String version, String color, String price, String img, String memory, String weight, String camera, String length, String width, String height, String cpu, String size, String internet, String graphicscard, String hdd, String detail, String graphicsCard, Set orders) {
        this.name = name;
        this.version = version;
        this.color = color;
        this.price = price;
        this.img = img;
        this.memory = memory;
        this.weight = weight;
        this.camera = camera;
        this.length = length;
        this.width = width;
        this.height = height;
        this.cpu = cpu;
        this.size = size;
        this.internet = internet;
        this.graphicscard = graphicscard;
        this.hdd = hdd;
        this.detail = detail;
        this.graphicsCard = graphicsCard;
        this.orders = orders;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return this.version;
    }
    
    public void setVersion(String version) {
        this.version = version;
    }

    public String getColor() {
        return this.color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }

    public String getPrice() {
        return this.price;
    }
    
    public void setPrice(String price) {
        this.price = price;
    }

    public String getImg() {
        return this.img;
    }
    
    public void setImg(String img) {
        this.img = img;
    }

    public String getMemory() {
        return this.memory;
    }
    
    public void setMemory(String memory) {
        this.memory = memory;
    }

    public String getWeight() {
        return this.weight;
    }
    
    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getCamera() {
        return this.camera;
    }
    
    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getLength() {
        return this.length;
    }
    
    public void setLength(String length) {
        this.length = length;
    }

    public String getWidth() {
        return this.width;
    }
    
    public void setWidth(String width) {
        this.width = width;
    }

    public String getHeight() {
        return this.height;
    }
    
    public void setHeight(String height) {
        this.height = height;
    }

    public String getCpu() {
        return this.cpu;
    }
    
    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getSize() {
        return this.size;
    }
    
    public void setSize(String size) {
        this.size = size;
    }

    public String getInternet() {
        return this.internet;
    }
    
    public void setInternet(String internet) {
        this.internet = internet;
    }

    public String getGraphicscard() {
        return this.graphicscard;
    }
    
    public void setGraphicscard(String graphicscard) {
        this.graphicscard = graphicscard;
    }

    public String getHdd() {
        return this.hdd;
    }
    
    public void setHdd(String hdd) {
        this.hdd = hdd;
    }

    public String getDetail() {
        return this.detail;
    }
    
    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getGraphicsCard() {
        return this.graphicsCard;
    }
    
    public void setGraphicsCard(String graphicsCard) {
        this.graphicsCard = graphicsCard;
    }

    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }
   








}