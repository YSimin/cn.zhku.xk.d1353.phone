package cn.edu.zhku.jsj.user.model;

public class Shop {
	private int id;
	private String name;
	private String score;
	private String address;
	private int saler_id;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSaler_id() {
		return saler_id;
	}
	public void setSaler_id(int saler_id) {
		this.saler_id = saler_id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
