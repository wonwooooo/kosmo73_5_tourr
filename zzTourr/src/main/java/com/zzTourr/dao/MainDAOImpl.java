package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MainVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//숙소-펜션-검색-페이지넘버
	public List<LodgeVO> mainLodgeList(HashMap map) {
		System.out.println("===> Mybatis mainLodgeList() 호출");
		return mybatis.selectList("main.MainDAO.mainLodgeList", map);
	}

	//숙소-펜션-페이지넘버
	public int getTotalPagepen() {
		System.out.println("===> Mybatis getTotalPagepen() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagepen");
	}

	//숙소-펜션-검색-보기
	public List<LodgeVO> mainlodgelistserpen(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserpen() 호출");
		return mybatis.selectList("main.MainDAO.mainlodgelistserpen", map);
	}

	//숙소-펜션-검색-페이지넘버
	public int getTotalPagepense(HashMap map) {
		System.out.println("===> Mybatis getTotalPagepense() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagepense", map);
	}

	
	//숙소-호텔-페이지넘버
	public int getTotalPageho() {
		System.out.println("===> Mybatis getTotalPageho() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPageho");
	}

	//숙소-호텔-보기
	public List<LodgeVO> mainLodgeListho(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListho() 호출");
		return mybatis.selectList("main.MainDAO.mainLodgeListho", map);
	}

	//숙소-호텔-검색-보기
	public List<LodgeVO> mainlodgelistserna(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserna() 호출");
		return mybatis.selectList("main.MainDAO.mainlodgelistserna", map);
	}

	//숙소-호텔-검색-페이지넘버
	public int getTotalPagehose(HashMap map) {
		System.out.println(map);
		System.out.println("===> Mybatis getTotalPagehose() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagehose", map);
	}

	//숙소-모텔-페이지넘버
	public int getTotalPagemo() {
		System.out.println("===> Mybatis getTotalPagemo() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagemo");
	}

	//숙소-모텔-보기
	public List<LodgeVO> mainLodgeListhmo(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListmo() 호출");
		return mybatis.selectList("main.MainDAO.mainLodgeListmo", map);
	}

	//숙소-모텔-검색-보기
	public List<LodgeVO> mainlodgelistsermo(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistsermo() 호출");
		return mybatis.selectList("main.MainDAO.mainlodgelistsermo", map);
	}

	//숙소-모텔-검색-페이지넘버
	public int getTotalPagemose(HashMap map) {
		System.out.println("===> Mybatis getTotalPagemose() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagemose", map);
	}

	//숙소-게하-페이지넘버
	public int getTotalPagege() {
		System.out.println("===> Mybatis getTotalPagege() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagege");
	}

	//숙소-게하-전체-보기
	public List<LodgeVO> mainLodgeListge(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListge() 호출");
		return mybatis.selectList("main.MainDAO.mainLodgeListge", map);
	}

	//숙소-게하-검색-보기
	public List<LodgeVO> mainlodgelistserge(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserge() 호출");
		return mybatis.selectList("main.MainDAO.mainlodgelistserge", map);
	}

	//숙소-게하-검색-페이지넘버
	public int getTotalPagegese(HashMap map) {
		System.out.println("===> Mybatis getTotalPagegese() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagegese", map);
	}

	//로그인
	public UsersVO mainmemberLogin(UsersVO vo) {
		System.out.println("===> MemberMapper mainidCheck 호출");
		return mybatis.selectOne("main.MainDAO.mainidCheck", vo);
	}

	//가이드-리스트
	public List<GuideTourVO> mainGuideList(HashMap map) {
		System.out.println("===> Mybatis mainGuideList() 호출");
		System.out.println(map);
		return mybatis.selectList("main.MainDAO.mainGuideList", map);
	}

	//가이드-페이지수
	public int getTotalPageguide() {
		System.out.println("===> Mybatis getTotalPageguide() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPageguide");
	}

	//가이드-검색-리스트
	public List<GuideTourVO> mainGuidelistser(HashMap map) {
		System.out.println("===> Mybatis ser() 호출");
		return mybatis.selectList("main.MainDAO.ser", map);
	}

	//가이드-검색-페이지수
	public int getTotalPagega(HashMap map) {
		System.out.println("===> Mybatis getTotalPagega() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPagega", map);
	}

	//숙소-상세페이지
	public LodgeVO mainlodgedetail(LodgeVO vo) {
		System.out.println("===> Mybatis mainlodgedetail 호출");
		return mybatis.selectOne("main.MainDAO.mainlodgedetail", vo);
	}

	//숙소-상세페이지-클릭시 객실정보
	public List<RoomVO> mainroomdetail(LodgeVO vo) {
		System.out.println("===> Mybatis mainroomdetail 호출");
		return mybatis.selectList("main.MainDAO.mainroomdetail", vo);
	}

	//숙소-상세페이지-고객리뷰-리스트
	public List<ProductRevboVO> mainProRevList(HashMap map) {
		System.out.println("===> Mybatis mainProRevList() 호출");
		return mybatis.selectList("main.MainDAO.mainProRevList", map);
	}

	//숙소-상세페이지-고객리뷰-페이지
	public int mainProRevPage(int lodIdNum) {
		System.out.println("===> Mybatis mainProRevPage() 호출");
		return mybatis.selectOne("main.MainDAO.mainProRevPage", lodIdNum);
	}

	//가이드 상세페이지(가이드정보)
	public GuideTourVO mainguidedetail(String programName) {
		System.out.println("===> Mybatis mainguidedetail 호출");
		return mybatis.selectOne("main.MainDAO.mainguidedetail", programName);
	}

	//가이드 상세페이지 조회-고객리뷰-전체리스트
	public List<ProductRevboVO> mainProRevListga(HashMap map) {
		System.out.println("===> Mybatis mainProRevListga() 호출");
		return mybatis.selectList("main.MainDAO.mainProRevListga", map);
	}

	//가이드 상세페이지 조회-고객리뷰-페이지
	public int mainProRevPagega(String programName) {
		System.out.println("===> Mybatis mainProRevPagega() 호출");
		return mybatis.selectOne("main.MainDAO.mainProRevPagega", programName);
	}

	//자유게시판-전체리스트
	public List<ComBoardVO> mainComBoardList(HashMap map) {
		System.out.println("===> Mybatis mainProRevListga() 호출");
		return mybatis.selectList("main.MainDAO.mainComBoardList", map);
	}

	//자유게시판-전체페이지수
	public int getTotalPageComBoard() {
		System.out.println("===> Mybatis getTotalPageComBoard() 호출");
		return mybatis.selectOne("main.MainDAO.getTotalPageComBoard");
	}

	//자유게시판-그룹번호받아오기
	public int mainGetFrGroupIddao() {
		System.out.println("===> Mybatis mainGetFrGroupIddao() 호출");
		return mybatis.selectOne("main.MainDAO.mainGetFrGroupIddao");
	}

	//자유게시판-글쓰기
	public int insertComBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis insertComBoard() 호출");
		return mybatis.insert("main.MainDAO.insertComBoard", vo);
	}
	//자유게시판-글보기
	public ComBoardVO mainfreeBoardViewdao(int articleId) {
		System.out.println("===> Mybatis mainfreeBoardViewdao 호출");
		return mybatis.selectOne("main.MainDAO.mainfreeBoardViewdao", articleId);
	}

	//자유게시판-글 볼때 조회수 +1 증가
	public void updateFreeBoardCountdao(int articleId) {
		System.out.println("===> Mybatis updateFreeBoardCountdao() 호출");
		mybatis.update("main.MainDAO.updateFreeBoardCountdao", articleId);
		
	}

	//자유게시판-글수정
	public void mainupdatefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainupdatefrBoard 호출");
		mybatis.update("main.MainDAO.mainupdatefrBoard", vo);
	}

	//자유게시판-글삭제
	public void maindeletefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis maindeletefrBoard 호출");
		mybatis.update("main.MainDAO.maindeletefrBoard", vo);
	}

	//답글의 번호
	public String selectLastSequenceNumber(String maxSeqNum, String minSeqNum) {
		HashMap map = new HashMap();
		map.put("maxSeqNum", maxSeqNum);	
		map.put("minSeqNum", minSeqNum);
		System.out.println("===> Mybatis selectLastSequenceNumber 호출");
		return mybatis.selectOne("main.MainDAO.selectLastSequenceNumber", map);
	}

	//리뷰게시판-글쓰기
	public int insertRvBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis insertRvBoard() 호출");
		return mybatis.insert("main.MainDAO.insertRvBoard", vo);
	}

	//리뷰게시판-글보기
	public ComBoardVO mainrvBoardViewdao(int articleId) {
		System.out.println("===> Mybatis mainfreeBoardViewdao 호출");
		return mybatis.selectOne("main.MainDAO.mainfreeBoardViewdao", articleId);
	}

	//리뷰게시판-글수정
	public void mainrvupdatefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainrvupdatefrBoard 호출");
		mybatis.update("main.MainDAO.mainrvupdatefrBoard", vo);
	}

	//리뷰게시판-글삭제
	public void mainrvdeletefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainrvdeletefrBoard 호출");
		mybatis.update("main.MainDAO.mainrvdeletefrBoard", vo);
	}

	//숙소-날짜-리스트
	public List<ReservationVO> mainlosevDateDAO(ReservationVO vo) {
		System.out.println("===> Mybatis mainlosevDateDAO 호출");
		return mybatis.selectList("main.MainDAO.mainlosevDateDAO", vo);
	}
	
	//객실수 체크
	public int roomNum(HashMap map) {
		System.out.println("===> Mybatis roomNum 호출");
		System.out.println(map);
		return mybatis.selectOne("main.MainDAO.roomNum", map);
	}


	
}
