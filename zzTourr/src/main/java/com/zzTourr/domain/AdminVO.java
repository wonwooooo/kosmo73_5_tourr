package com.zzTourr.domain;

public class AdminVO {
	
	// admin TBL
	private String adminId;
	private String adminPw;
	private String adminMail;
	private String adminName;
	private String adminImg;
	
	private int num;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
	// getter & setter
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public String getAdminMail() {
		return adminMail;
	}
	public void setAdminMail(String adminMail) {
		this.adminMail = adminMail;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminImg() {
		return adminImg;
	}
	public void setAdminImg(String adminImg) {
		this.adminImg = adminImg;
	}

}
