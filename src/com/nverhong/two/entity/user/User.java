package com.nverhong.two.entity.user;

public class User {

	private Integer uid;
	private String uname;
	private String upassword;
	private String e_mail;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public User(String uname, String upassword) {
		super();
		this.uname = uname;
		this.upassword = upassword;
	}
	
	
}
