package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.AdminVO;
import com.zzTourr.domain.ChartVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	
	private static final Object id = null;
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	// 관리자 회원가입 _201222 원우
	@Override
	public int managerInsert(AdminVO vo) {
		System.out.println("AdminDAOImpl : managerInsert / 회원가입");
		return mybatis.insert("manager.insertId", vo);
		
	}	// end of managerInsert
	
	
	
	// 로그인 _201223 원우
	@Override
	public AdminVO managerLogin(AdminVO vo) {
		System.out.println("AdminDAOImpl : managerlogin / 로그인");
		return mybatis.selectOne("manager.loginId", vo);
		
	}	// end of managerlogin

	
	
	// 중복확인
	@Override
	public int idCheck(String id) {
		System.out.println("AdminDAOImpl : idCheck / 중복확인");
		return mybatis.selectOne("manager.idCheck", id);
	}
	
	

	// 전체예약목록 _201228 원우
	@Override
	public List<ReservationVO> totalReservList(Map<String, Object> aa) {
		System.out.println("AdminDAOImpl : totalReservList / 전체예약목록");
		System.out.println("aa : " + aa);
		return mybatis.selectList("manager.totalReservList",aa);
		
	}	// end of totalReservList



	// 객실예약목록 _201228 원우
	@Override
	public List<ReservationVO> roomReservList(Map<String, Object> aa) {
		System.out.println("AdminDAOImpl : roomReservList / 호텔예약목록");
		return mybatis.selectList("manager.roomReservList",aa);
		
	}	// end of reservList



	// 펜션예약목록 _201228 원우
	@Override
	public List<ReservationVO> guideReservList(Map<String, Object> aa) {
		System.out.println("AdminDAOImpl : guideReservList / 펜션예약목록");
		return mybatis.selectList("manager.guideReservList",aa);
		
	}	// end of guideReservList
	

	
	// 회원목록 _201228 원우
	@Override
	public List<UsersVO> memberList() {
		System.out.println("AdminDAOImpl : memberList / 회원목록");
		return mybatis.selectList("manager.memberList");
		
	}	// end of memberList

	
	//게스트하우스예약목록 _201228 원우
	public List<ReservationVO> geReservList(Map<String, Object> aa) {
		System.out.println("AdminDAOImpl : geReservList / 게스트하우스예약목록");
		return mybatis.selectList("manager.geReservList",aa);
		
	}



	//모텔예약목록 _201228 원우
	public List<ReservationVO> moReservList(Map<String, Object> aa) {
		System.out.println("AdminDAOImpl : moReservList / 모텔예약목록");
		return mybatis.selectList("manager.moReservList",aa);
		
	}



	// 숙소사장+가이드 목록 _201229 원우
	@Override
	public List lodgeclientList() {
		System.out.println("AdminDAOImpl : clientList / 숙소사장목록");
		return mybatis.selectList("mamager.lodgeclientList");
		
	}	// end of clientList



	// 전체 예약 목록 행 개수 가져오기 _201230
	public int selectTotalListCount(Map<String, Object> param) {
		System.out.println("AdminDAOImpl : selectTotalListCount / 리스트카운트");
		System.out.println("AdminDAOImpl : selectTotalListCount // param : " + param);
		
		return mybatis.selectOne("selectTotalListCount",param);
	}



	
	
	
	
	
	
	
	
	
	// 차트 1
	@Override
	public List<ChartVO> chart1() {
		System.out.println("다오임플 : chart1");
		return mybatis.selectList("manager.chart1");
	}


	// 차트 2
	@Override
	public List<ChartVO> chart2(String yymm) {
		System.out.println("다오임플 : chart2");
		return mybatis.selectList("manager.chart2", yymm);
	}

	//차트
	public int chart3() {
			System.out.println("다오임플 : chart3");
			return mybatis.selectOne("manager.chart3");
	}

	//차트
	public int chart4() {
			System.out.println("다오임플 : chart4");
			return mybatis.selectOne("manager.chart4");
	}

	
	
	
	

}
