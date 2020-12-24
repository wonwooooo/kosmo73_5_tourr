package com.zzTourr.service;

import com.zzTourr.domain.AdminVO;

public interface AdminService {
	
	// 관리자 회원가입 _201222 원우
	public int idInsert(AdminVO vo);
	
	
	// 관리자 로그인 _201223 원우
	public AdminVO adminLogin(AdminVO vo);
	

}
