package com.zzTourr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.HotelDAO;
import com.zzTourr.dao.HotelDAOImpl;
import com.zzTourr.domain.MgrVO;

@Service("HotelService")
public class HotelServiceImpl implements HotelService {
	
	@Autowired
	HotelDAO hotelDAO;

	@Override
	public void hotelMgrInsert(MgrVO vo){
		System.out.println("hotelServiceImpl : hotelMgrInsert / 회원가입aaaaaaaaaaaaaaaaaaaaaaa");
		System.out.println(vo.toString());
		
		hotelDAO.MgrInsert(vo);
		
		System.out.println("");
	}

	
}
