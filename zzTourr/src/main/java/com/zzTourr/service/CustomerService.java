package com.zzTourr.service;

import java.util.HashMap;
import java.util.List;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.PaymentVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

public interface CustomerService {
	
	//회원가입 작성
	public void customerInsert(UsersVO vo); 
	
	//회원정보 수정
	public void customerModify(UsersVO vo);
	
	//회원정보 조회
	public UsersVO users(String userId);
	
	//아이디 중복 검사
	//public void idCheck(UsersVO vo);

	//예약내역 리스트로 불러온다
	public List<ReservationVO> reservation(String userId, int pageNo);

	//예약내역 페이지
	int resPage();
	
	
	//결제하기
	public void customerPayment(PaymentVO vo);
	
	//결제하기-상태변경
	public void customerUpdate(PaymentVO vo);

	//상품후기 작성(화면만 가기)
	public void customerInsertProdRev(ProductRevboVO vo);
	
	//실제 db 상품후기 작성
	public void revInsert(ProductRevboVO vo);

	//상품후기 리스트
	public List<ProductRevboVO> productrevbo(String resId, String productId);

	//아이디 중복 검사
	public int idChecks(UsersVO vo);

	
	
}
