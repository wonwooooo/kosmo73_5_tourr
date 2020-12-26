package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MainVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<LodgeVO> mainLodgeList(LodgeVO vo) {
		System.out.println("===> Mybatis mainLodgeList() 호출");
		return mybatis.selectList("main.MainDAO.mainLodgeList", vo);
	}

	public int getTotalPageho() {
		System.out.println("===> Mybatis mainLodgeList() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPageho");
	}

	public List<LodgeVO> mainLodgeListho(HashMap map) {
		System.out.println("===> Mybatis mainLodgeList() 호출");
		return mybatis.selectList("main.MainDAO.mainLodgeListho", map);
	}

	public List<LodgeVO> mainlodgelistserna(HashMap map) {
		System.out.println("===> Mybatis mainLodgeList() 호출");
		return mybatis.selectList("main.MainDAO.mainlodgelistserna", map);
	}

	public List<LodgeVO> mainlodgelistserad(LodgeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<LodgeVO> mainlodgelistserna(LodgeVO vo, String searchad) {
		// TODO Auto-generated method stub
		return null;
	}

}
