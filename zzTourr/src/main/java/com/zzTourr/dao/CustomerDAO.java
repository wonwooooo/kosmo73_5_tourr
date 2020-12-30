package com.zzTourr.dao;


import java.util.List;

import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

public interface CustomerDAO {

	// 회원가입 작성
	public void CustomerInsert(UsersVO vo);
	
	// 아이디 중복 검사
	public void idCheck(UsersVO vo);
	
	//회원정보 수정
	public void CustomerModify(UsersVO vo);
	
	//회원정보 불러오기
	public UsersVO userName(String userId);
			
	//예약내역
	public List<ReservationVO> reservationDAO(String userId); 
	
	//상품후기 작성 화면만 가는거
	public void customerInsertProdRev(ProductRevboVO vo);

	
	//상품 후기 작성 실제적으로 insert
//	public void revInsert(UsersVO vo, String resId, );
}
