package com.zzTourr.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ReservationVO {
	private String resId;
	private String userId;
	private String category;
	private int productId;
	private String checkInDate2;
	private String checkOut2;
	private String reservName;
	private String reservTel;
	private String lodger;
	private String lodgerTel;
	private String count;
	private String peopleNum;
	private Date resDate2;
	private String checkInDate;
	private String checkOut;
	private String resState;
	private int reservPrice;
	

	
	public String getResId() {
		return resId;
	}
	public void setResId(String resId) {
		this.resId = resId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getCheckInDate2() {
		return checkInDate2;
	}
	public void setCheckInDate2(String checkInDate2) {
		this.checkInDate2 = checkInDate2;
	}
	public String getCheckOut2() {
		return checkOut2;
	}
	public void setCheckOut2(String checkOut2) {
		this.checkOut2 = checkOut2;
	}
	public String getReservName() {
		return reservName;
	}
	public void setReservName(String reservName) {
		this.reservName = reservName;
	}
	public String getReservTel() {
		return reservTel;
	}
	public void setReservTel(String reservTel) {
		this.reservTel = reservTel;
	}
	public String getLodger() {
		return lodger;
	}
	public void setLodger(String lodger) {
		this.lodger = lodger;
	}
	public String getLodgerTel() {
		return lodgerTel;
	}
	public void setLodgerTel(String lodgerTel) {
		this.lodgerTel = lodgerTel;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(String peopleNum) {
		this.peopleNum = peopleNum;
	}
	public Date getResDate2() {
		return resDate2;
	}
	public void setResDate2(Date resDate2) {
		this.resDate2 = resDate2;
	}
	public String getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public String getResState() {
		return resState;
	}
	public void setResState(String resState) {
		this.resState = resState;
	}
	public int getReservPrice() {
		return reservPrice;
	}
	public void setReservPrice(int reservPrice) {
		this.reservPrice = reservPrice;
	}
	
	
	
	
}
