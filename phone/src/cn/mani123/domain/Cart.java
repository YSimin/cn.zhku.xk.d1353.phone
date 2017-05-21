package cn.mani123.domain;

public class Cart {

	private String name;
	private String version;
	private String memory;
	private String color;
	private String price;
	
	public Cart(){}
	
	
	
	@Override
	public String toString() {
		return "Cart [name=" + name + ", version=" + version + ", memory="
				+ memory + ", color=" + color + ", price=" + price + "]";
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
