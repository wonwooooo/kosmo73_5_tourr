package com.zzTourr.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zzTourr.domain.MgrVO;
import com.zzTourr.domain.HotelVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Repository("HotelDAO")
public class HotelDAOImpl implements HotelDAO {
	
	@Autowired
	private SqlSession mybatis;

	@Override
	public void MgrInsert(MgrVO vo) {
		System.out.println("=====> Mybatis hotelMgrlogin 숙소주인회원가입aaaaaaaaaaaaaaaaaaaa");
		mybatis.insert("hotel.MgrInsert", vo);
	}
	
	@Override
	public MgrVO Mgrlogin(MgrVO vo) { 
	  System.out.println("=====> Mybatis hotelMgrlogin 숙소주인로그인");
	  //MgrVO vo1 = mybatis.selectOne("hotel.MgrLogin", vo);
	  //System.out.println(vo1.toString());
	  return mybatis.selectOne("hotel.MgrLogin", vo);
	  }
		
	@Override
	public MgrVO selMgr(MgrVO vo) {
		System.out.println("=====> Mybatis selMgr 숙소주인 불러오기");
		MgrVO vo1 = mybatis.selectOne("hotel.selMgr", vo);
		System.out.println(vo1.toString());
		 return mybatis.selectOne("hotel.selMgr", vo);
	}

	@Override
	public void updateMgr(MgrVO vo) {
		System.out.println("=====> Mybatis updateMgr 숙소주인 수정하기");
		mybatis.update("hotel.updateMgr", vo);
		
	}

//	@Override
//	public void LodgeInsert(LodgeVO vo) {
//		System.out.println("=====> Mybatis LodgeInsert 숙소추가aaaaaaaaaaaaaaaaaaaa");
//		mybatis.insert("hotel.LodgeInsert", vo);
//	}
//	
	@Override
	public void LodgeInsert(LodgeVO vo) {
		System.out.println("=====> Mybatis LodgeInsert 숙소추가aaaaaaaaaaaaaaaaaaaa");
		mybatis.insert("hotel.LodgeInsert", vo);
		
	}


	//객실 등록
	public void RoomInsert(RoomVO vo) {
		System.out.println("=====> Mybatis RoomInsert 객실추가aaaaaaaaaaaaaaaaaaaa");
		mybatis.insert("hotel.RoomInsert", vo);
	}

	//시퀀스 번호구하기
	public int RoomSep() {
		System.out.println("=====> Mybatis RoomSept 객실추가aaaaaaaaaaaaaaaaaaaa");
		return mybatis.selectOne("hotel.RoomSep");
	}
	
	  /*
	 * public int ResSelByMgr(MgrVO vo) {
	 * System.out.println("=====> Mybatis resMgr 숙소주인 보유 숙소리스트 출력"); ReservationVO
	 * resvo; return 0; }
	 * 
	 * 
	 * @Override public ReservationVO hotelResMgr(ReservationVO vo) { // TODO
	 * Auto-generated method stub return null; }
	 */
}
