package com.zzTourr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.AdminDAOImpl;
import com.zzTourr.domain.AdminVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAOImpl adminDAO;
	
	
	// 관리자 회원가입 _201222 원우
	@Override
	public int idInsert(AdminVO vo) {
		System.out.println("AdminServiceImpl : idInsert / 회원가입");
		return adminDAO.managerInsert(vo);
		
	}	// end of idInsert
	
	
	// 관리자 로그인 _201223 원우
	@Override
	public AdminVO adminLogin(AdminVO vo) {
		System.out.println("AdminServiceImpl : adminLogin / 로그인");
		return adminDAO.managerlogin(vo);
		
	}	// end of adminLogin

}
