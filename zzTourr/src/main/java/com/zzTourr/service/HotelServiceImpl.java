package com.zzTourr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.HotelDAOImpl;
import com.zzTourr.domain.MgrVO;

@Service("HotelService")
public class HotelServiceImpl implements HotelService {
	
	@Autowired
	private HotelDAOImpl hotelDAO;
	
	@Override
	public int idInsert(MgrVO vo) {
		System.out.println("HotelServiceImpl : idINnsert / 회원가입");
		return hotelDAO.hotelMgrInsert(vo); 
	}
		
	@Override
	public MgrVO hotelMgrlogin(MgrVO vo) {
		System.out.println("HotelServiceImpl : MgrLogin / 로그인");
		return hotelDAO.hotelMgrlogin(vo);
	}
}
