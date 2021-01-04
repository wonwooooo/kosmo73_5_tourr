package com.zzTourr.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.MainDAOImpl;
import com.zzTourr.domain.ComBoardVO;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	private int totalRecCount;	
	
	private int pageTotalCount;		
	//숙소 및 가이드 목록
	private int countPerPage = 8;
	
	//숙소 및 가이드 리뷰
	private int countPerPageRe = 3;
	
	//게시판
	private int countPerPageBo = 10;
	
	@Autowired
	private MainDAOImpl mainDAO;
	
	//숙소 카테고리 중 카테고리가 '펜션'인 것을 검색-전체 페이지 수 계산
	public int mainLodgeList(LodgeVO vo) {
		totalRecCount =  mainDAO.getTotalPagepen();
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
	}
	
	//숙소 카테고리 중 카테고리가 '펜션'인 것의 리스트
	public List<LodgeVO> mainLodgeList(int pageNo) {
		int firstRow = (pageNo-1)*countPerPage + 1;
		int endRow = pageNo*countPerPage; 
		System.out.println(firstRow);
		System.out.println(endRow);
		HashMap map = new HashMap();
		map.put("row1", firstRow);	
		map.put("row2", endRow);
		return mainDAO.mainLodgeList(map);
	}
	

	//숙소-펜션-검색-리스트
	public List<LodgeVO> mainlodgelistserpen(int pageNo, LodgeVO vo, String searchlo) {
		int firstRow = (pageNo-1)*countPerPage + 1;
		int endRow = pageNo*countPerPage; 
		HashMap map = new HashMap();
		map.put("lov", vo);	
		map.put("searchtext", searchlo);
		map.put("row1", firstRow);	
		map.put("row2", endRow);
		System.out.println(searchlo);
		return mainDAO.mainlodgelistserpen(map);
	}

	//숙소 카테고리 중 카테고리가 '펜션' / 검색 '지역'인 것을 서비스단에서 페이징 적용-전체 페이지 수 계산
	public int mainLodgeListpense(LodgeVO vo, String searchtext) {
		HashMap map = new HashMap();
		map.put("lov", vo);	
		map.put("searchtext", searchtext);
		System.out.println(map);
		totalRecCount =  mainDAO.getTotalPagepense(map);
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
	}



	//숙소 카테고리 중 카테고리가 '호텔'인 것을 서비스단에서 페이징 적용-전체 페이지 수 계산
	public int mainLodgeListho(LodgeVO vo) {
		totalRecCount =  mainDAO.getTotalPageho();
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
		
	}
	
	///숙소 카테고리 중 카테고리가 '호텔'인 것을 서비스단에서 페이징 적용-실제적으로 값 2개에 의해 띄워지는 내용
		public List<LodgeVO> mainLodgeListho(int pageNo) {
		int firstRow = (pageNo-1)*countPerPage + 1;
		int endRow = pageNo*countPerPage; 
		System.out.println(firstRow);
		System.out.println(endRow);
		HashMap map = new HashMap();
		map.put("row1", firstRow);	
		map.put("row2", endRow);
		return mainDAO.mainLodgeListho(map);
	}

		//숙소-호텔-검색-리스트
		public List<LodgeVO> mainlodgelistserna(int pageNo,  LodgeVO vo, String searchlo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainlodgelistserna(map);
		}


		//숙소 카테고리 중 카테고리가 '호텔' / 검색 '지역'인 것을 서비스단에서 페이징 적용-전체 페이지 수 계산
		public int mainLodgeListhose(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagehose(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			
		}

		//숙소-모텔-전체페이지수
		public int mainLodgeListmo(LodgeVO vo) {
			totalRecCount =  mainDAO.getTotalPagemo();
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//숙소-모텔-전체리스트
		public List<LodgeVO> mainLodgePagemo(int pageNo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainLodgeListhmo(map);
		}

		//숙소-모텔-검색-리스트
		public List<LodgeVO> mainlodgelistsermo(int pageNo, LodgeVO vo, String searchlo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainlodgelistsermo(map);
		}

		//숙소-모텔-검색-전체페이지수
		public int mainLodgeListmose(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagemose(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			
		}

		//숙소-게하-전체페이지수
		public int mainLodgePagege(LodgeVO vo) {
			totalRecCount =  mainDAO.getTotalPagege();
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			}

		//숙소-게하-전체-리스트
		public List<LodgeVO> mainLodgeListge(int pageNo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainLodgeListge(map);
		}

		//숙소-게하-검색-리스트
		public List<LodgeVO> mainlodgelistserge(int pageNo, LodgeVO vo, String searchlo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainlodgelistserge(map);
		}

		//숙소-게하-검색-전체페이지수
		public int mainLodgeListge(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagegese(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			
		}

		//로그인
		public UsersVO mainidCheckLogin(UsersVO vo) {
			return mainDAO.mainmemberLogin(vo);
		}

	

		//숙소-상세페이지
		public LodgeVO mainlodgedetail(LodgeVO vo) {
			return mainDAO.mainlodgedetail(vo);
		}

		//숙소 상세페이지 클릭시 객실정보 보이도록
		public List<RoomVO> mainroomlist(LodgeVO vo) {
			return mainDAO.mainroomdetail(vo);
		}

		//숙소 상세페이지 클릭시 리뷰 보이도록
		//리스트
		public List<ProductRevboVO> productRevboList(int lodIdNum, int pageNo) {
			int firstRow = (pageNo-1)*countPerPageRe + 1;
			int endRow = pageNo*countPerPageRe; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("lodId", lodIdNum);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainProRevList(map);
		}

		//숙소 상세페이지 클릭시 리뷰 보이도록
		//페이지수
		public int productRevboPage(int lodIdNum) {
			totalRecCount =  mainDAO.mainProRevPage(lodIdNum);
			pageTotalCount = totalRecCount / countPerPageRe;
			if(totalRecCount % countPerPageRe != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

	
		//자유게시판-리스트
		public List<ComBoardVO> freeBoardList(int pageNo) {
			int firstRow = (pageNo-1)*countPerPageBo + 1;
			int endRow = pageNo*countPerPageBo; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainComBoardList(map);
		}

		//자유게시판-전체페이지수
		public int freeBoardList(ComBoardVO vo) {
			totalRecCount =  mainDAO.getTotalPageComBoard();
			pageTotalCount = totalRecCount / countPerPageBo;
			if(totalRecCount % countPerPageBo != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//자유게시판-그룹번호받아오기
		public int mainGetFrGroupId() {
			return mainDAO.mainGetFrGroupIddao();
		}

		//자유게시판-글쓰기
		public int insertComBoard(ComBoardVO vo) {
			return mainDAO.insertComBoard(vo);
			
		}

		//자유게시판-글보기
		public ComBoardVO mainfreeBoardView(int articleId) {
			return mainDAO.mainfreeBoardViewdao(articleId);
		}

		//자유게시판-글 볼때 조회수 +1 증가
		public void updateFreeBoardCount(int articleId) {
			mainDAO.updateFreeBoardCountdao(articleId);
		}
		
		//자유게시판-글수정
		public void mainfreeBoardUpdate(ComBoardVO vo) {
			mainDAO.mainupdatefrBoard(vo);
		}

		//자유게시판-글삭제
		public void mainfreeBoarddelete(ComBoardVO vo) {
			mainDAO.maindeletefrBoard(vo);
		}

		//숙소-날짜-리스트
		public List<ReservationVO> mainlosevDate(ReservationVO vo) {
			return mainDAO.mainlosevDateDAO(vo);
		}

		//객실수 체크
		public int idCheck_Login(ReservationVO vo) {
			HashMap map = new HashMap();
			map.put("checkInDate2", vo.getCheckInDate2());	
			map.put("productId", vo.getProductId());
			System.out.println(vo.getCheckInDate2());
			System.out.println(vo.getProductId());
			return mainDAO.roomNum(map);
		}

		//예약하기
		public int insertRev(ReservationVO vo) {
			return mainDAO.insertRevDAO(vo);
		}

		//메인페이지-펜션
		public List<LodgeVO> mainmainLodgeList() {
			return mainDAO.mmainLodgeListpen();
		}

		//메인페이지-호텔
		public List<LodgeVO> mainmainLodgeListho() {
			return mainDAO.mmainLodgeListho();
		}

		//메인페이지-게스트하우스
		public List<LodgeVO> mainmainLodgeListge() {
			return mainDAO.mmainLodgeListge();
		}

		//메인페이지-모텔
		public List<LodgeVO> mainmainLodgePagemo() {
			return mainDAO.mmainLodgeListmo();
		}

		

}
