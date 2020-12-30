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
	
	/*
	 * 변수설명
	 * resId : 예약번호. 시퀀스 처리
	 * userId : 예약한 사용자 아이디(로그인시 세션값에서 불러올 예정)
	 * category : 숙소/가이드
	 * productId : 예약한 상품의 아이디
	 * - 숙소의 경우 객실 id
	 * - 가이드의 경우 해당 날짜의 가이드 상품
	 * (동일 가이드 상품이어도 날짜별로 상품 id는 다름)
	 * checkInDate2, checkOut2 : 숙소 체크인날짜, 체크아웃날짜
	 * (가이드 예약시 null로 들어감)
	 * reservName: 예약한 사용자 이름(로그인시 세션값에서 불러올 예정)
	 * reservTel : 예약한 사용자 번호(로그인시 세션값에서 불러올 예정)
	 * lodger : 투숙할 사용자 이름(고객 입력)
	 * lodgerTel : 투숙할 사용자 전화번호(고객 입력)
	 * count :
	 * 숙소 예약시 객실수량으로 일괄 1로 처리(객실 수량당 인원을 달리해서 예약테이블에 insert하는 동적 화면을 만들긴 시간상 어려워요)
	 * 가이드 예약시 가이드 인원
	 * peopleNum : 객실 예약시 객실당 숙박 인원 (가이드 예약시 null)
	 * resDate : 예약일시(sysdate로 쿼리에 넣을예정)
	 * checkInDate, checkOut : 가이드 예약시 예약일, 2개 동일하게 들어감, 숙소예약시 null
	 * resState : 예약상태 (예약대기, 예약확정, etc - 처음 예약으로 insert시엔 일괄적오르 예약대기로 입력)
	 * reservPrice : 예약금액(각 수량 * 가격을 곱해서 나온 최종 금액)
	 */
	
	
	
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
