package com.zzTourr.dao;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MgrVO;
import com.zzTourr.domain.ReservationVO;

public interface HotelDAO {
	
	public void MgrInsert(MgrVO vo);
	
	public MgrVO Mgrlogin(MgrVO vo);
	
	public MgrVO selMgr(MgrVO vo);
	
	public void updateMgr(MgrVO vo);
	
	public void LodgeInsert(LodgeVO vo);
	
	 /*
	 * ReservationVO hotelResMgr(ReservationVO vo);
	 */
	
}
