package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zzTourr.domain.AdminVO;
import com.zzTourr.domain.ChartVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

public interface AdminDAO {
	
	
	/*
	 * 	회원가입 관련
	 * 
	 */
	// 관리자 회원가입 _201222 원우
	int managerInsert(AdminVO vo);
	
	// 아이디 확인 및 로그인 _원우 201222
	AdminVO managerLogin(AdminVO vo);
	
	// 아이디 중복확인 _1230
	int idCheck(String id);
	
	
	// 전체예약목록 _201228 원우
	List<ReservationVO> totalReservList(Map<String, Object> aa);
	
	
	// 전체 예약 목록 행 개수 가져오기 _201230
	int selectTotalListCount(Map<String, Object> param);
	
	
	// 호텔예약목록 _201228 원우
	List<ReservationVO> roomReservList(Map<String, Object> aa);

	
	// 가이드예약목록 _201228 원우
	List<ReservationVO> guideReservList(Map<String, Object> aa);
	
	// 게스트하우스예약목록 _201228 원우
	List<ReservationVO> geReservList(Map<String, Object> aa);

		
	// 모텔예약목록 _201228 원우
	List<ReservationVO> moReservList(Map<String, Object> aa);
	
	
	// 회원목록 _201228 원우
	List<UsersVO> memberList();
	
	
	// 숙소사장+가이드 목록 _201229 원우
	List lodgeclientList();
	
	
	
	
	
	
	
	
	
	
	// 차트 1
	List<ChartVO> chart1();
	
	// 차트 2
	List<ChartVO> chart2(String yymm);
	
	
	public int chart3();
	
	public int chart4();
	
	
}
