package com.zzTourr.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.AdminVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	// 관리자 회원가입 _201222 원우
	@Override
	public int managerInsert(AdminVO vo) {
		System.out.println("AdminDAOImpl : managerInsert / 회원가입");
		return mybatis.insert("manager.insertId", vo);
		
	}	// end of managerInsert
	
	
	// 로그인 _201223 원우
	@Override
	public AdminVO managerlogin(AdminVO vo) {
		System.out.println("AdminDAOImpl : managerlogin / 로그인");
		return mybatis.selectOne("manager.loginId", vo);
		
	}	// end of managerlogin
	

}
