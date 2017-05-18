package cn.mani123.domain;
// default package

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */
public class Product{

	// Constructors


	private Integer id;
	private String name;
	private String version;
	private String color;
	private String price;
	private String img;
	private String memory;
	private String weight;
	private String camera;
	private String cpu;
	private String size;
	private String detail;
	private String internet;
	private String card;
	private String hdd;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** minimal constructor */
	public Product(Integer id, String name) {
		this.id = id;
		this.name = name;
	}

	/** full constructor */
	public Product(Integer id, String name, String version,
			String color, String price, String img, String memory,
			String weight, String camera, String cpu, String size,
			String detail, String internet, String card, String hdd, Set orders) {
		this.id = id;
		this.name = name;
		this.version = version;
		this.color = color;
		this.price = price;
		this.img = img;
		this.memory = memory;
		this.weight = weight;
		this.camera = camera;
		this.cpu = cpu;
		this.size = size;
		this.detail = detail;
		this.internet = internet;
		this.card = card;
		this.hdd = hdd;
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

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getInternet() {
		return this.internet;
	}

	public void setInternet(String internet) {
		this.internet = internet;
	}

	public String getCard() {
		return this.card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	public String getHdd() {
		return this.hdd;
	}

	public void setHdd(String hdd) {
		this.hdd = hdd;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}
