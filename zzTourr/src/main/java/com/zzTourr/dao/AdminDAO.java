package com.zzTourr.dao;

import com.zzTourr.domain.AdminVO;

public interface AdminDAO {
	
	// 관리자 회원가입 _201222 원우
	int managerInsert(AdminVO vo);
	
	// 아이디 확인 및 로그인 _원우 201222
	AdminVO managerlogin(AdminVO vo);
	
	
}
