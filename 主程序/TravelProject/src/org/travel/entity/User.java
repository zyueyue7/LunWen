package org.travel.entity;

public class User {
	private int id;
	private String uname;
	private String upwd;
	private String phone;
	private String email;
	private String userclass;
	private int status;

	public User() {
	}

	public User(String uname, String upwd) {
		this.uname = uname;
		this.upwd = upwd;
	}

	public User(String uname, String upwd, String userclass) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.userclass = userclass;
	}

	public User(String uname, String upwd, String phone, String email) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.phone = phone;
		this.email = email;
	}

	public User(String uname, String upwd, String phone, String email,
			int status) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.phone = phone;
		this.email = email;
		this.status = status;
	}

	public User(String uname, String upwd, String phone, String email,
			String userclass) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.phone = phone;
		this.email = email;
		this.userclass = userclass;
	}

	public User(int id, String uname, String upwd, String phone, String email) {
		super();
		this.id = id;
		this.uname = uname;
		this.upwd = upwd;
		this.phone = phone;
		this.email = email;
	}

	public User(int id, String uname, String upwd, String phone, String email,
			String userclass, int status) {
		super();
		this.id = id;
		this.uname = uname;
		this.upwd = upwd;
		this.phone = phone;
		this.email = email;
		this.userclass = userclass;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserclass() {
		return userclass;
	}

	public void setUserclass(String userclass) {
		this.userclass = userclass;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
