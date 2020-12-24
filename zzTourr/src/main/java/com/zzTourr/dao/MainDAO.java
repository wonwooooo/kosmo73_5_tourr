package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MainVO;

public interface MainDAO {
	public List<LodgeVO> mainLodgeList(LodgeVO vo);
	
	public int getTotalPageho();
	
	public List<LodgeVO> mainLodgeListho(HashMap map);
	
}
