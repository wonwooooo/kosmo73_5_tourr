package com.zzTourr.dao;

import java.util.HashMap;
import java.util.List;

import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MainVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

public interface MainDAO {
	//숙소-펜션-전체리스트
	public List<LodgeVO> mainLodgeList(HashMap map);
	
	//숙소-펜션-전체페이지수
	public int getTotalPagepen();
	
	//숙소-펜션-검색-전체리스트
	public List<LodgeVO> mainlodgelistserpen(HashMap map);
		
	//숙소-펜션-검색-페이지수
	public int getTotalPagepense(HashMap map);
	
	//숙소-호텔-전체페이지수
	public int getTotalPageho();
	
	//숙소-호텔-전체리스트
	public List<LodgeVO> mainLodgeListho(HashMap map);
	
	//숙소-호텔-검색-전체리스트
	public List<LodgeVO> mainlodgelistserna(HashMap map);
	
	//숙소-호텔-검색-페이지수
	public int getTotalPagehose(HashMap map);
	
	//숙소-모텔-전체페이지수
	public int getTotalPagemo();
		
	//숙소-모텔-전체리스트
	public List<LodgeVO> mainLodgeListhmo(HashMap map);
	
	//숙소-모텔-검색-전체리스트
	public List<LodgeVO> mainlodgelistsermo(HashMap map);
		
	//숙소-모텔-검색-페이지수
	public int getTotalPagemose(HashMap map);
	
	//숙소-게하-전체페이지수
	public int getTotalPagege();
			
	//숙소-게하-전체리스트
	public List<LodgeVO> mainLodgeListge(HashMap map);
		
	//숙소-게하-검색-전체리스트
	public List<LodgeVO> mainlodgelistserge(HashMap map);
			
	//숙소-게하-검색-페이지수
	public int getTotalPagegese(HashMap map);
	
	//로그인 확인기능 구현
	public UsersVO mainmemberLogin(UsersVO vo);
		
	//가이드-전체리스트
	public List<GuideTourVO> mainGuideList(HashMap map);
		
	//가이드-전체페이지수
	public int getTotalPageguide();
	
	//가이드-검색-전체리스트
	public List<GuideTourVO> mainGuidelistser(HashMap map);
			
	//가이드-검색-페이지수
	public int getTotalPagega(HashMap map);
	
	//숙소 상세페이지(숙소정보)
	public LodgeVO mainlodgedetail(LodgeVO vo);
	
	//숙소 상세페이지 조회시 객실정보
	public List<RoomVO> mainroomdetail(LodgeVO vo);
	
	//숙소 상세페이지 조회-고객리뷰-전체리스트
	public List<ProductRevboVO> mainProRevList(HashMap map);
				
	//숙소 상세페이지 조회-고객리뷰-페이지
	public int  mainProRevPage(int lodIdNum);
	
	//가이드 상세페이지(가이드정보)
	public GuideTourVO mainguidedetail(String programName);
	
	//가이드 상세페이지 조회-고객리뷰-전체리스트
	public List<ProductRevboVO> mainProRevListga(HashMap map);
					
	//가이드 상세페이지 조회-고객리뷰-페이지
	public int  mainProRevPagega(String programName);
	
	//자유게시판-전체리스트
	public List<ComBoardVO> mainComBoardList(HashMap map);
			
	//자유게시판-전체페이지수
	public int getTotalPageComBoard();
	
	//자유게시판-그룹번호받아오기
	 public int mainGetFrGroupIddao();
	 
	//자유게시판-글쓰기
	 public int insertComBoard(ComBoardVO vo);
	 
	//자유게시판-글보기
	 public ComBoardVO mainfreeBoardViewdao(int articleId);
	 
	//자유게시판-글수정
	 public void mainupdatefrBoard(ComBoardVO vo);
	 
	//자유게시판-글삭제
	 public void maindeletefrBoard(ComBoardVO vo);
	 
	//리뷰게시판-글쓰기
	public int insertRvBoard(ComBoardVO vo);
		 
	//리뷰게시판-글보기
	public ComBoardVO mainrvBoardViewdao(int articleId);
		 
	//리뷰게시판-글수정
	public void mainrvupdatefrBoard(ComBoardVO vo);
		 
	//리뷰게시판-글삭제
	public void mainrvdeletefrBoard(ComBoardVO vo);

	//답글의 번호
	public String selectLastSequenceNumber(String maxSeqNum, String minSeqNum);
	
	//리스트-숙소-날짜
	public List<ReservationVO> mainlosevDateDAO(ReservationVO vo);
	
	//���� �ܿ� ����
	public int roomNum(ReservationVO vo);
	
	//메인페이지-펜션
	public List<LodgeVO> mmainLodgeListpen();

	//메인페이지-호텔
	public List<LodgeVO> mmainLodgeListho();
		
	//메인페이지-게스트하우스
	public List<LodgeVO> mmainLodgeListge();

	//메인페이지-모텔
	public List<LodgeVO> mmainLodgeListmo();


}
