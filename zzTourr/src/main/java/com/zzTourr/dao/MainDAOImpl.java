package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zzTourr.domain.ComBoardVO;

import com.zzTourr.domain.LodgeVO;

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
		System.out.println("===> Mybatis mainLodgeList() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeList", map);
	}

	//숙소-펜션-페이지넘버
	public int getTotalPagepen() {
		System.out.println("===> Mybatis getTotalPagepen() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagepen");
	}

	//숙소-펜션-검색-보기
	public List<LodgeVO> mainlodgelistserpen(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserpen() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistserpen", map);
	}

	//숙소-펜션-검색-페이지넘버
	public int getTotalPagepense(HashMap map) {
		System.out.println("===> Mybatis getTotalPagepense() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagepense", map);
	}

	
	//숙소-호텔-페이지넘버
	public int getTotalPageho() {
		System.out.println("===> Mybatis getTotalPageho() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPageho");
	}

	//숙소-호텔-보기
	public List<LodgeVO> mainLodgeListho(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListho() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeListho", map);
	}

	//숙소-호텔-검색-보기
	public List<LodgeVO> mainlodgelistserna(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserna() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistserna", map);
	}

	//숙소-호텔-검색-페이지넘버
	public int getTotalPagehose(HashMap map) {
		System.out.println(map);
		System.out.println("===> Mybatis getTotalPagehose() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagehose", map);
	}

	//숙소-모텔-페이지넘버
	public int getTotalPagemo() {
		System.out.println("===> Mybatis getTotalPagemo() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagemo");
	}

	//숙소-모텔-보기
	public List<LodgeVO> mainLodgeListhmo(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListmo() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeListmo", map);
	}

	//숙소-모텔-검색-보기
	public List<LodgeVO> mainlodgelistsermo(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistsermo() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistsermo", map);
	}

	//숙소-모텔-검색-페이지넘버
	public int getTotalPagemose(HashMap map) {
		System.out.println("===> Mybatis getTotalPagemose() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagemose", map);
	}

	//숙소-게하-페이지넘버
	public int getTotalPagege() {
		System.out.println("===> Mybatis getTotalPagege() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagege");
	}

	//숙소-게하-전체-보기
	public List<LodgeVO> mainLodgeListge(HashMap map) {
		System.out.println("===> Mybatis mainLodgeListge() ȣ��");
		return mybatis.selectList("main.MainDAO.mainLodgeListge", map);
	}

	//숙소-게하-검색-보기
	public List<LodgeVO> mainlodgelistserge(HashMap map) {
		System.out.println("===> Mybatis mainlodgelistserge() ȣ��");
		return mybatis.selectList("main.MainDAO.mainlodgelistserge", map);
	}

	//숙소-게하-검색-페이지넘버
	public int getTotalPagegese(HashMap map) {
		System.out.println("===> Mybatis getTotalPagegese() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPagegese", map);
	}

	//로그인
	public UsersVO mainmemberLogin(UsersVO vo) {
		System.out.println("===> MemberMapper mainidCheck ȣ��");
		return mybatis.selectOne("main.MainDAO.mainidCheck", vo);
	}


	//숙소-상세페이지
	public LodgeVO mainlodgedetail(LodgeVO vo) {
		System.out.println("===> Mybatis mainlodgedetail ȣ��");
		return mybatis.selectOne("main.MainDAO.mainlodgedetail", vo);
	}

	//숙소-상세페이지-클릭시 객실정보
	public List<RoomVO> mainroomdetail(LodgeVO vo) {
		System.out.println("===> Mybatis mainroomdetail ȣ��");
		return mybatis.selectList("main.MainDAO.mainroomdetail", vo);
	}

	//숙소-상세페이지-고객리뷰-리스트
	public List<ProductRevboVO> mainProRevList(HashMap map) {
		System.out.println("===> Mybatis mainProRevList() ȣ��");
		return mybatis.selectList("main.MainDAO.mainProRevList", map);
	}

	//숙소-상세페이지-고객리뷰-페이지
	public int mainProRevPage(int lodIdNum) {
		System.out.println("===> Mybatis mainProRevPage() ȣ��");
		return mybatis.selectOne("main.MainDAO.mainProRevPage", lodIdNum);
	}

	
	//자유게시판-전체리스트
	public List<ComBoardVO> mainComBoardList(HashMap map) {
		System.out.println("===> Mybatis mainProRevListga() ȣ��");
		return mybatis.selectList("main.MainDAO.mainComBoardList", map);
	}
	
	//자유게시판-전체페이지수
	public int getTotalPageComBoard() {
		System.out.println("===> Mybatis getTotalPageComBoard() ȣ��");
		return mybatis.selectOne("main.MainDAO.getTotalPageComBoard");
	}

	//자유게시판-그룹번호받아오기
	public int mainGetFrGroupIddao() {
		System.out.println("===> Mybatis mainGetFrGroupIddao() ȣ��");
		return mybatis.selectOne("main.MainDAO.mainGetFrGroupIddao");
	}

	//자유게시판-글쓰기
	public int insertComBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis insertComBoard() ȣ��");
		return mybatis.insert("main.MainDAO.insertComBoard", vo);
	}
	//자유게시판-글보기
	public ComBoardVO mainfreeBoardViewdao(int articleId) {
		System.out.println("===> Mybatis mainfreeBoardViewdao ȣ��");
		return mybatis.selectOne("main.MainDAO.mainfreeBoardViewdao", articleId);
	}

	//자유게시판-조회수 수정
	public void updateFreeBoardCountdao(int articleId) {
		System.out.println("===> Mybatis updateFreeBoardCountdao() ȣ��");
		mybatis.update("main.MainDAO.updateFreeBoardCountdao", articleId);
		
	}

	//자유게시판-글수정
	public void mainupdatefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainupdatefrBoard ȣ��");
		mybatis.update("main.MainDAO.mainupdatefrBoard", vo);
	}

	//자유게시판-글보기
	public void maindeletefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis maindeletefrBoard ȣ��");
		mybatis.update("main.MainDAO.maindeletefrBoard", vo);
	}

	//����� ��ȣ
	public String selectLastSequenceNumber(int maxSeqNum, int minSeqNum) {
		HashMap map = new HashMap();
		map.put("maxSeqNum", maxSeqNum);	
		map.put("minSeqNum", minSeqNum);
		System.out.println("===> Mybatis selectLastSequenceNumber ȣ��");
		return mybatis.selectOne("main.MainDAO.selectLastSequenceNumber", map);
	}

	//����Խ���-�۾���
	public int insertRvBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis insertRvBoard() ȣ��");
		return mybatis.insert("main.MainDAO.insertRvBoard", vo);
	}

	//����Խ���-�ۺ���
	public ComBoardVO mainrvBoardViewdao(int articleId) {
		System.out.println("===> Mybatis mainfreeBoardViewdao ȣ��");
		return mybatis.selectOne("main.MainDAO.mainfreeBoardViewdao", articleId);
	}

	//����Խ���-�ۼ���
	public void mainrvupdatefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainrvupdatefrBoard ȣ��");
		mybatis.update("main.MainDAO.mainrvupdatefrBoard", vo);
	}

	//����Խ���-�ۻ���
	public void mainrvdeletefrBoard(ComBoardVO vo) {
		System.out.println("===> Mybatis mainrvdeletefrBoard ȣ��");
		mybatis.update("main.MainDAO.mainrvdeletefrBoard", vo);
	}

	//����-��¥-����Ʈ
	public List<ReservationVO> mainlosevDateDAO(ReservationVO vo) {
		System.out.println("===> Mybatis mainlosevDateDAO ȣ��");
		return mybatis.selectList("main.MainDAO.mainlosevDateDAO", vo);
	}
	
	//���Ǽ� üũ
	public int roomNum(HashMap map) {
		System.out.println("===> Mybatis roomNum ȣ��");
		System.out.println(map);
		return mybatis.selectOne("main.MainDAO.roomNum", map);
	}

	//예약하기
	public int insertRevDAO(ReservationVO vo) {
		System.out.println("===> Mybatis insertRvBoard() ȣ��");
		return mybatis.insert("main.MainDAO.insertRevDAO", vo);
	}

	//메인페이지-펜션
	public List<LodgeVO> mmainLodgeListpen() {
		System.out.println("===> Mybatis mmainLodgeListpen");
		return mybatis.selectList("main.MainDAO.mmainLodgeListpen");
		
	}

	//메인페이지-호텔
	public List<LodgeVO> mmainLodgeListho() {
		System.out.println("===> Mybatis mmainLodgeListho()");
		return mybatis.selectList("main.MainDAO.mmainLodgeListho");
	}

	//메인페이지-게스트하우스
	public List<LodgeVO> mmainLodgeListge() {
		System.out.println("===> Mybatis mmainLodgeListge()");
		return mybatis.selectList("main.MainDAO.mmainLodgeListge");
	}

	//메인페이지-모텔
	public List<LodgeVO> mmainLodgeListmo() {
		System.out.println("===> Mybatis mmainLodgeListmo()");
		return mybatis.selectList("main.MainDAO.mmainLodgeListmo");
	}


	
}
