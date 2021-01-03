package com.zzTourr.dao;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MgrVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;

public interface HotelDAO {
	
	public void MgrInsert(MgrVO vo);
	
	public MgrVO Mgrlogin(MgrVO vo);
	
	public MgrVO selMgr(MgrVO vo);
	
	public void updateMgr(MgrVO vo);
	
	public void LodgeInsert(LodgeVO vo);

	//객실 등록하는 코드
	public void  RoomInsert(RoomVO vo);
	
	//시퀀스 변호구하기
	public int  RoomSep();
	 /*
	 * ReservationVO hotelResMgr(ReservationVO vo);
	 */
	
}
