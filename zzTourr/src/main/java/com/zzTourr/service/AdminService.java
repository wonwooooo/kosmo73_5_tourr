package com.zzTourr.service;

import java.util.List;
import java.util.Map;

import com.zzTourr.domain.AdminVO;
import com.zzTourr.domain.ChartVO;
import com.zzTourr.domain.Criteria;
import com.zzTourr.domain.PageMaker;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

public interface AdminService {
	
	/*
	 * 	enter
	 * 	로그인 관련
	 */
	// 관리자 회원가입 _201222 원우
	public int idInsert(AdminVO vo);
	
	
	// 관리자 로그인 _201223 원우
	public AdminVO adminLogin(AdminVO vo);
	
	
	// 중복확인 _1230
	public int idCheck(String id);
	
	
	// 전체예약목록 _201228 원우
	public List<ReservationVO> totalReservList(Map<String, Object> list);
	
	
	// 전체 예약 목록 행 개수 가져오기 _201230
	public PageMaker pagingInfo(Map<String, Object> param, Criteria cri) throws Exception;
	
	
	// 객실예약목록 _201228 원우
	public List<ReservationVO> roomReservList(Map<String, Object> list);
	
	
	// 가이드예약목록 _201228 원우
	public List<ReservationVO> guideReservList(Map<String, Object> list);

	
	// 회원목록 _201228 원우
	public List<UsersVO> memberList();
	
	
	// 숙소사장 + 가이드 목록 _201229 원우
	public List lodgeclientList();

	

	
	
	
	
	
	
	
	
	// 차트 1
	public List<ChartVO> chart1();
	
	// 차트 2
	public List<ChartVO> chart2(String yymm);	
	
	
	
	
	
	
	
	

}
