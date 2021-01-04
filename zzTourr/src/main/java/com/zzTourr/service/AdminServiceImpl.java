package com.zzTourr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.AdminDAOImpl;
import com.zzTourr.domain.AdminVO;
import com.zzTourr.domain.ChartVO;
import com.zzTourr.domain.Criteria;
import com.zzTourr.domain.PageMaker;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAOImpl adminDAO;
	
	
	// 관리자 회원가입 _201222 원우
	@Override
	public int idInsert(AdminVO vo) {
		System.out.println("AdminServiceImpl : idInsert / 회원가입");
		return adminDAO.managerInsert(vo);
		
	}	// end of idInsert
	
	
	
	// 관리자 로그인 _201223 원우
	@Override
	public AdminVO adminLogin(AdminVO vo) {
		System.out.println("AdminServiceImpl : adminLogin / 로그인");
		return adminDAO.managerLogin(vo);
		
	}	// end of adminLogin
	
	
	
	// 중복확인
	@Override
	public int idCheck(String id) {
		System.out.println("AdminServiceImpl : idCheck / 중복확인");
		return adminDAO.idCheck(id);
		
	}



	// 전체예약목록 _201228 원우
	@Override
	public List<ReservationVO> totalReservList(Map<String, Object> list) {
		System.out.println("AdminServiceImpl : totalReservList / 전체예약목록");
		System.out.println("AdminServiceImpl : totalReservList // list : " + list);
		return adminDAO.totalReservList(list);
	}
	
	
	
	// 전체 예약 목록 행 개수 가져오기 _201230
	@Override
	public PageMaker pagingInfo(Map<String, Object> param, Criteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(adminDAO.selectTotalListCount(param)); // 리스트 수 가지고오기 
		param.put("startPage", cri.getPageStart());
		param.put("endPage", cri.getPageEnd());
		return pageMaker;
	}
	
	
	
	// 객실예약목록 _201228 원우
	@Override
	public List<ReservationVO> roomReservList(Map<String, Object> list) {
		System.out.println("AdminServiceImpl : roomReservList / 객실예약목록");
		return adminDAO.roomReservList(list);
	}
	
	
	
	// 가이드예약목록 _201228 원우
	@Override
	public List<ReservationVO> guideReservList(Map<String, Object> list) {
		System.out.println("AdminServiceImpl : guideReservList / 가이드예약목록");
		return adminDAO.guideReservList(list);
	}
	
	
	// 게스트하우스예약목록 _201228 원우
	public List<ReservationVO> gesReservList(Map<String, Object> list) {
		System.out.println("AdminServiceImpl : geReservList / 게스트하우스예약목록");
		return adminDAO.geReservList(list);
	}



	// 모텔하우스예약목록 _201228 원우
	public List<ReservationVO> mosReservList(Map<String, Object> list) {
		System.out.println("AdminServiceImpl : moReservList / 모텔예약목록");
		return adminDAO.moReservList(list);
	}



	
	
	// 회원목록 _201228 원우
	@Override
	public List<UsersVO> memberList() {
		System.out.println("AdminServiceImpl : memberList / 회원목록");
		return adminDAO.memberList();
		
	}	// end of memberList


	
	// 숙소사장+가이드 목록 _201229 원우 
	@Override
	public List lodgeclientList() {
		System.out.println("AdminServiceImpl : clientList / 숙소사장 목록");
		
		return adminDAO.lodgeclientList();
	}


	
	
	
	
	
	
	
	
	
	// 차트 1
	@Override
	public List<ChartVO> chart1() {
		System.out.println("서비스임플 : chart1");
		
		return adminDAO.chart1();
	}


	// 차트 2
	@Override
	public List<ChartVO> chart2(String yymm) {
		System.out.println("서비스임플 : chart2");
		
		return adminDAO.chart2(yymm);
	}
	
	// 차트 1
	@Override
	public int chart3() {
			System.out.println("서비스임플 : chart3");
			
			return adminDAO.chart3();
	}


	// 차트 2
	@Override
	public List<ReservationVO> chart4() {
			System.out.println("서비스임플 : chart4");
			
	return adminDAO.chart4();
	}


	


}
