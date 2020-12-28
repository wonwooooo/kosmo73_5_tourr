package com.zzTourr.dao;

import com.zzTourr.domain.MgrVO;

public interface HotelDAO {
	
	int hotelMgrInsert(MgrVO vo);
	
	MgrVO hotelMgrlogin(MgrVO vo);
	
	
}
