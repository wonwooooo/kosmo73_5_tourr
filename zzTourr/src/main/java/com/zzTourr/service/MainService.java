package com.zzTourr.service;

import java.util.List;

import com.zzTourr.domain.LodgeVO;

public interface MainService {
	
	//¼÷¼Ò ¸ñ·Ï Á¶È¸
	//Ææ¼Ç
	List<LodgeVO> mainLodgeList(LodgeVO vo);
	
	int mainLodgeListho(LodgeVO vo);
	
	List<LodgeVO> mainLodgeListho(int pageNo);


	List<LodgeVO> mainlodgelistserna(LodgeVO vo, String searchlo);

	List<LodgeVO> mainlodgelistserad(LodgeVO vo, String text);

}
