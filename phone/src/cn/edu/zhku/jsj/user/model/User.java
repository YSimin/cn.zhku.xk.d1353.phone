package cn.edu.zhku.jsj.user.model;

public class User {
	
	private int id;
	private String username;
	private String password;
	private int userage;
	private int account_id;
	public int getid() {
		return id;
	}
	public void setUserid(int id) {
		this.id = id;
	}
	public String getUserName() {
		return username;
	}
	public void setUserName(String username) {
		this.username = username;
	}
	public String getUserPassword() {
		return password;
	}
	public void setUserPassword(String password) {
		this.password = password;
	}
	public int getUserAge() {
		return userage;
	}
	public void setUserAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public int getUserAccount_id() {
		return account_id;
	}
	public void setUserAge(int userage) {
		this.userage = userage;
	}

	

}
