package com.zzTourr.service;

import java.util.List;

import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

public interface MainService {
	
	//숙소-펜션-리스트
	List<LodgeVO> mainLodgeList(int pageNo);
	
	//숙소-펜션-전체페이지수
	int mainLodgeList(LodgeVO vo);
	
	//숙소-펜션-검색-리스트
	List<LodgeVO> mainlodgelistserpen(int pageNo, LodgeVO vo, String searchlo);
		
	//숙소-펜션-검색-페이지수
	public int mainLodgeListpense(LodgeVO vo, String searchtext);
	
	//숙소-호텔-전체페이지수
	int mainLodgeListho(LodgeVO vo);
	
	//숙소-호텔-리스트
	List<LodgeVO> mainLodgeListho(int pageNo);

	//숙소-호텔-검색-리스트
	List<LodgeVO> mainlodgelistserna(int pageNo, LodgeVO vo, String searchlo);
	
	//숙소-호텔-검색-페이지수
	int mainLodgeListhose(LodgeVO vo, String searchtext);
	
	//숙소-모텔-전체페이지수
	int mainLodgeListmo(LodgeVO vo);
		
	//숙소-모텔-리스트
	List<LodgeVO> mainLodgePagemo(int pageNo);

	//숙소-모텔-검색-리스트
	List<LodgeVO> mainlodgelistsermo(int pageNo, LodgeVO vo, String searchlo);
		
	//숙소-모텔-검색-페이지수
	int mainLodgeListmose(LodgeVO vo, String searchtext);

	//숙소-게하-전체페이지수
	int mainLodgePagege(LodgeVO vo);
		
	///숙소-게하-리스트
	List<LodgeVO> mainLodgeListge(int pageNo);

	//숙소-게하-검색-리스트
	List<LodgeVO> mainlodgelistserge(int pageNo, LodgeVO vo, String searchlo);
		
	//숙소-게하-검색-페이지수
	int mainLodgeListge(LodgeVO vo, String searchtext);
	
	//로그인
	public UsersVO mainidCheckLogin(UsersVO vo);
	
	//가이드-리스트
	List<GuideTourVO> mainGuideList(int pageNo);
		
	//가이드-전체페이지수
	int mainGuidePage(GuideTourVO vo);
	
	//가이드-검색-리스트
	public List<GuideTourVO> mainguidelistser(int pageNo, GuideTourVO vo, String searchtext);
			
	//가이드-검색-페이지수
	public int mainGuidePageser(GuideTourVO vo, String searchtext);

	//숙소-상세-(정보)
	LodgeVO mainlodgedetail(LodgeVO vo);
	
	//객실-숙소 상세페이지-리스트(정보)
	List<RoomVO> mainroomlist(LodgeVO vo);
	
	//숙소-상세페이지-고객리뷰-리스트
	public List<ProductRevboVO> productRevboList(int lodIdNum, int pageNo);
			
	//숙소-상세페이지-고객리뷰-전체페이지수
	int productRevboPage(int lodIdNum);
	
	//가이드상세페이지-검색-리스트(정보)
	GuideTourVO mainguidedetail(String programName);
	
	//가이드-상세페이지-고객리뷰-리스트
	public List<ProductRevboVO> productRevboListga(String programName, int pageNo);
				
	//가이드-상세페이지-고객리뷰-전체페이지수
	int productRevboPagega(String programName);
	
	//자유게시판-리스트
	List<ComBoardVO> freeBoardList(int pageNo);
			
	//자유게시판-전체페이지수
	int freeBoardList(ComBoardVO vo);
	
	//자유게시판-그룹번호받아오기
	int mainGetFrGroupId();

	//자유게시판-글쓰기
	int insertComBoard(ComBoardVO vo);
	
	//자유게시판-글보기(각 개별 글들)
	ComBoardVO mainfreeBoardView(int articleId);
	
	//자유게시판-글 볼때 조회수 +1 증가
	void updateFreeBoardCount(int articleId);
	
	//자유게시판-글수정
	void mainfreeBoardUpdate(ComBoardVO vo);
	
	//자유게시판-글삭제
	void mainfreeBoarddelete(ComBoardVO vo);
	
	//-날짜-리스트
	public List<ReservationVO> mainlosevDate(ReservationVO vo);

	//객실수 체크
	public int idCheck_Login(ReservationVO vo);
	
	//예약하기
	int insertRev(ReservationVO vo);
	
	//메인페이지-펜션
	List<LodgeVO> mainmainLodgeList();
	
	//메인페이지-호텔
	List<LodgeVO> mainmainLodgeListho();
		
	//메인페이지-게스트하우스
	List<LodgeVO> mainmainLodgeListge();
	
	//메인페이지-모텔
	List<LodgeVO> mainmainLodgePagemo();
	
	
}
