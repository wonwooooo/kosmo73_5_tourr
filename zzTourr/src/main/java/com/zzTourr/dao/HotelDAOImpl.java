package com.zzTourr.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.MgrVO;

@Repository("HotelDAO")
public class HotelDAOImpl implements HotelDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int hotelMgrInsert(MgrVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MgrVO hotelMgrlogin(MgrVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
