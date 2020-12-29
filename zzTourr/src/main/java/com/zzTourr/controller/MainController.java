package com.zzTourr.controller;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.dao.MainDAO;
import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;
import com.zzTourr.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;

	@Autowired
	private MainDAO mainDAO;

	
	@RequestMapping("mainViews/mainindex.trip")
	public String mainindex() {
		return "/mainViews/mainindex";
		
	}
	
	//자유게시판-리스트
	@RequestMapping("/mainViews/mainfreeboardlist.trip")
	public ModelAndView  mainfreeboardlist(String page, ComBoardVO vo) {
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.freeBoardList(vo);
		int man =vo.getLevel();
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
	
		System.out.println(startNo);
		
		List<ComBoardVO> result = mainService.freeBoardList(pageNo);
		
		
		System.out.println("00" + result.get(0).toString());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainfreeboardlist");
		mv.addObject("page", page);
		mv.addObject("freeList", result);
		System.out.println(result);
		mv.addObject("level", man);
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("startNo", startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		return mv;
		
	}	
	
	//자유게시판-글쓰기
	@RequestMapping("/mainViews/mainfreeboardinput.trip")
	public String mainfreeboardinput() {
		return "/mainViews/mainfreeboardinput";
		
	}	
	
	//자유게시판-글저장
	@RequestMapping("/mainViews/mainfreeboardsave.trip")
	public ModelAndView mainfreeboardsave(ComBoardVO vo) {
		System.out.println(vo.getTitle());
		System.out.println(vo.getCategory());
		// 그룹번호(groupid) 지정
		int groupId = mainService.mainGetFrGroupId();
		vo.setGroupId(groupId);
		DecimalFormat dformat = new DecimalFormat("0000000000");
		vo.setSequenceNo( dformat.format(groupId) + "999999");
		 mainService.insertComBoard(vo);
		 
		ModelAndView mv = new ModelAndView();
		mv.addObject("cvo", vo);
		mv.setViewName("redirect:mainfreeboardlist.trip");
		
		return  mv;
	}	
	
	//자유게시판-글보기
	@RequestMapping("/mainViews/mainfreeboardview.trip")
	public ModelAndView mainfreeboardview(int articleId) {
	//넘겨받은 articleId의 글번호의 글정보
	ComBoardVO cvo = mainService.mainfreeBoardView(articleId);
	
	//조회수 +1 증가
	mainService.updateFreeBoardCount(articleId);
	
	//필요한 값 모델엔뷰로 리턴
	 ModelAndView mv = new ModelAndView();
	mv.setViewName("mainViews/mainfreeboardview");

	mv.addObject("articleId", articleId);
	mv.addObject("comboard", cvo);
	return mv;
	
	}
	
	//자유게시판-글수정-수정으로만 넘어가는거
	@RequestMapping("mainViews/mainfreeboardmodify.trip")
	public ModelAndView mainfreeboardmodify(String articleId) {
		//필요한 값 모델엔뷰로 리턴
		 ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainfreeboardmodify");

		mv.addObject("articleId", articleId);
		return mv;
	}
	
	//자유게시판-글답변-답변으로만 넘어가는거
	@RequestMapping("mainViews/mainfreeboardreply.trip")
	public ModelAndView mainfreeboardreply(String articleId) {
	//필요한 값 모델엔뷰로 리턴
	ModelAndView mv = new ModelAndView();
	mv.setViewName("mainViews/mainfreeboardreply");
	return mv;
	}
	
	//답글관련 - #1
	String getSearchMinSeqNum( ComBoardVO cvo )
	{
		String parentSeqNum = cvo.getSequenceNo();
		DecimalFormat dFormat = new DecimalFormat("0000000000000000");
		long parentSeqLongValue = Long.parseLong(parentSeqNum);
		long searchMinLongValue = 0;
		
		switch( cvo.getLevel())
		{
		case 0 : searchMinLongValue = parentSeqLongValue / 1000000L * 1000000L; break;
		case 1 : searchMinLongValue = parentSeqLongValue / 10000L * 10000L; break;
		case 2 : searchMinLongValue = parentSeqLongValue / 100L * 100L; break;
		}
		return dFormat.format(searchMinLongValue);
	}
	
	//답글관련 - #2
	private String getSequenceNumber( ComBoardVO parent, String lastChildSeq ) throws Exception
	{
		long parentSeqLong	= Long.parseLong( parent.getSequenceNo());
		int  parentLevel	= parent.getLevel();
		
		long decUnit = 0;
		if		( parentLevel == 0 ){	decUnit = 10000L;	}
		else if	( parentLevel == 1 ){	decUnit = 100L;		}
		else if ( parentLevel == 2 ){	decUnit = 1L;		}
		
		String sequenceNumber = null;
		
		DecimalFormat dFormat = new DecimalFormat("0000000000000000");
		if( lastChildSeq == null ){			// 답변글이 없다면
			sequenceNumber = dFormat.format(parentSeqLong-decUnit);
		} else {							// 답변글이 있다면, 마지막 답변글인지 확인
			String orderOfLastChildSeq = null;
			if( parentLevel == 0 ){
				orderOfLastChildSeq = lastChildSeq.substring(10,12);
				sequenceNumber = lastChildSeq.substring(0, 12) + "9999";
			}else if( parentLevel == 1 ){
				orderOfLastChildSeq = lastChildSeq.substring(12,14);
				sequenceNumber = lastChildSeq.substring(0, 14) + "99";				
			}else if( parentLevel == 2 ){
				orderOfLastChildSeq = lastChildSeq.substring(14,16);
				sequenceNumber = lastChildSeq;			
			}
			
			if( orderOfLastChildSeq.equals("00")){
				throw new Exception("마지막 자식 글이 이미 존재합니다.");
			}
			
			long seq = Long.parseLong(sequenceNumber) - decUnit;
			sequenceNumber = dFormat.format(seq);
			
			return sequenceNumber; 
		}
		return sequenceNumber;
		
	}
	
//	/mainfreeboardreplysave
	//자유게시판-글저장(답글)
	@RequestMapping("/mainViews/mainfreeboardreplysave.trip")
	public ModelAndView mainfreeboardreplysave(String pId, ComBoardVO vo) throws Exception {
		int parentId = 0;
		if( pId != null ) parentId = Integer.parseInt(pId);
		
		ComBoardVO cvo = mainService.mainfreeBoardView(parentId);
		
		// 답변글에 순서번호 구하기
		String maxSeqNum = cvo.getSequenceNo();
		String minSeqNum = getSearchMinSeqNum(cvo);
		
		String lastChildSeq = mainDAO.selectLastSequenceNumber( maxSeqNum, minSeqNum );
				
		String sequenceNumber = getSequenceNumber( cvo,lastChildSeq);
		
		vo.setGroupId(vo.getGroupId()); // 부모의 그룹번호와 동일하게 지정
		vo.setSequenceNo(sequenceNumber);	 // 위에서 구한 답변글의 순서번호 지정
		vo.getLevel();
	
		System.out.println("++"+vo.getLevel());
		
		mainService.insertComBoard(vo);
		System.out.println(vo.getArticleId());
		//vo.setArticleId(articleId);	 
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("articleId", vo.getArticleId());
		mv.addObject("cvo", vo);
		mv.addObject("level", vo.getLevel());
		mv.setViewName("redirect:mainfreeboardlist.trip");
			
		return  mv;
		//return "redirect:mainfreeboardview.trip?articleId="+vo.getArticleId();
	}	
		
	
	
	//자유게시판-글수정-수정작업
	
	@RequestMapping("mainViews/mainfreeboardmodifyup.trip")
	public String mainfreeboardmodifyup(ComBoardVO vo) {
		//int article = Integer.parseInt(articleId);
		//vo.setArticleId(article);
		System.out.println(vo.getArticleId());
		mainService.mainfreeBoardUpdate(vo);
		return "redirect:mainfreeboardview.trip?articleId="+vo.getArticleId();
		//return "redirect:mainfreeboardlist.trip";
	}
	

	//자유게시판-글삭제
		@RequestMapping("mainViews/mainfreeboarddelete.trip")
		public String mainfreeboarddelete(ComBoardVO vo) {
			mainService.mainfreeBoarddelete(vo);
			return "redirect:mainfreeboardlist.trip";
			
		}
		
	
	@RequestMapping("/mainViews/mainrvboardlist.trip")
	public String mainrvboardlist() {
		return "/mainViews/mainrvboardlist";
		
	}	
	
	//가이드리스트
	@RequestMapping("/mainViews/mainguidelist.trip")
	public ModelAndView mainguidelist(String page, GuideTourVO vo) {
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.mainGuidePage(vo);
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
	
		System.out.println(startNo);
		List<GuideTourVO> result = mainService.mainGuideList(pageNo);
		System.out.println("00" + result.get(0).toString());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainguidelist");
		mv.addObject("page", page);
		mv.addObject("guideList", result);
		System.out.println(result);
		
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("startNo", startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		return mv;
	
	}	
	
	//가이드 검색기능
	@RequestMapping(value="/mainViews/mainguidelistse.trip", method = RequestMethod.GET)
	public ModelAndView mainguidelistse(String page, String searchtext, GuideTourVO vo) {
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.mainGuidePageser(vo, searchtext);
		System.out.println(pageNo);
		System.out.println(totalcount);
		List<GuideTourVO> result = mainService.mainguidelistser(pageNo, vo, searchtext);
	
		
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
					
			ModelAndView mv = new ModelAndView();
			mv.setViewName("mainViews/mainguidelistse");
			mv.addObject("page", page);
			mv.addObject("searchtext", searchtext);
			System.out.println("--"+searchtext);
			System.out.println(result);
			mv.addObject("guideList", result);
			mv.addObject("totalcount", totalcount);
			mv.addObject("pageNo", pageNo);
			mv.addObject("startNo", startNo);
			mv.addObject("endNo", endNo);
			mv.addObject("pNo", pNo);
			mv.addObject("nNo", nNo);
			System.out.println("=="+pageNo);
			System.out.println(totalcount);
			System.out.println(page);
			System.out.println(mv);
			return mv;
	
	}
	
	@RequestMapping("/mainViews/mainlogin.trip")
	public String mainlogin() {
		return "/mainViews/mainlogin";
	}	
	
	@RequestMapping("/mainViews/mainlogOut.trip")
	public String mainlogOut() {
		return "/mainViews/mainlogOut";
	}	
	
	//로그인
	@RequestMapping("/mainViews/mainloginok.trip")
	public String mainloginok(UsersVO vo, HttpSession session) {
		
		UsersVO result = mainService.mainidCheckLogin(vo);
		System.out.println(result);
		if(result == null || result.getUserId() == null) {
		
			return "/mainViews/mainlogin";
			//로그인 화면 페이지 이동
		}else {
			//세션에 login 이름에 사용자이름/연락처/id 저장하기
			session.setAttribute("login", result.getUserName());
			session.setAttribute("loginId", result.getUserId());
			session.setAttribute("loginTel", result.getUserTel());
					
			return "/mainViews/mainindex";
		}
		
	}	

		
	//숙소 테이블 중 카테고리가 '펜션'인 곳의 리스트를 띄워라
	@RequestMapping("/mainViews/mainlodgelist.trip")
	public ModelAndView mainlodgelist(String page, LodgeVO vo) {
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.mainLodgeList(vo);
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
	
		System.out.println(startNo);
		List<LodgeVO> result = mainService.mainLodgeList(pageNo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainlodgelist");
		System.out.println(pageNo);
		mv.addObject("page", page);
		mv.addObject("lodgeList", result);
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("startNo", startNo);
		System.out.println(startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		return mv;
	}
	
	//펜션 목록 검색 기능
	//지역으로
	
	@RequestMapping(value="/mainViews/mainlodsearchpen.trip", method = RequestMethod.GET)
	public ModelAndView mainlodgelistsepen(String page, String searchtext, LodgeVO vo) {
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.mainLodgeListpense(vo, searchtext);
		System.out.println(pageNo);
		System.out.println(totalcount);
		List<LodgeVO> result = mainService.mainlodgelistserpen(pageNo, vo, searchtext);
		
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
					
			ModelAndView mv = new ModelAndView();
			mv.setViewName("mainViews/mainlodsearchpen");
			mv.addObject("page", page);
			mv.addObject("searchtext", searchtext);
			mv.addObject("lodgeList", result);
			mv.addObject("totalcount", totalcount);
			mv.addObject("pageNo", pageNo);
			mv.addObject("startNo", startNo);
			mv.addObject("endNo", endNo);
			mv.addObject("pNo", pNo);
			mv.addObject("nNo", nNo);
			System.out.println(pageNo);
			System.out.println(totalcount);
			System.out.println(page);
			return mv;
	
	}
	
	
	//숙소 테이블 중 카테고리가 '호텔'인 곳의 리스트를 띄워라
	@RequestMapping(value="/mainViews/mainlodgelistho.trip", method = RequestMethod.GET)
	public ModelAndView mainlodgelistho(String page, LodgeVO vo) {

		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.mainLodgeListho(vo);
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
	
		System.out.println(startNo);
		List<LodgeVO> result = mainService.mainLodgeListho(pageNo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainlodgelistho");
		System.out.println(pageNo);
		mv.addObject("lodgeList", result);
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("startNo", startNo);
		System.out.println(startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		return mv;
	}
	
	//호텔 목록 검색 기능
	//지역으로
	@RequestMapping(value="/mainViews/mainlodsearch.trip", method = RequestMethod.GET)
	public ModelAndView mainlodgelistser(String page, String searchtext, LodgeVO vo) {
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = mainService.mainLodgeListhose(vo, searchtext);
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;
			
		List<LodgeVO> result = null;
		System.out.println(searchtext);
			result = mainService.mainlodgelistserna(pageNo, vo, searchtext);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("mainViews/mainlodsearch");
			mv.addObject("searchtext", searchtext);
			mv.addObject("lodgeList", result);
			mv.addObject("totalcount", totalcount);
			mv.addObject("pageNo", pageNo);
			mv.addObject("page", page);
			mv.addObject("startNo", startNo);
			mv.addObject("endNo", endNo);
			mv.addObject("pNo", pNo);
			mv.addObject("nNo", nNo);
			System.out.println(searchtext);
			return mv;
	
	}
	
	//숙소 테이블 중 카테고리가 '모텔'인 곳의 리스트를 띄워라
		@RequestMapping(value="/mainViews/mainlodgelistmo.trip", method = RequestMethod.GET)
		public ModelAndView mainlodgelistmo(String page, LodgeVO vo) {

			int pageNo = 1;

			if(page != null) pageNo = Integer.parseInt(page);

			int totalcount = mainService.mainLodgeListmo(vo);
			int pNo = 1;
			int nNo = totalcount;
			if(pageNo > 1){
				pNo = pageNo-1;
			}
			if(pageNo < totalcount){
				nNo = pageNo+1;
			}
			int startNo = 1;
			int endNo = totalcount;
		
			System.out.println(startNo);
			List<LodgeVO> result = mainService.mainLodgePagemo(pageNo);
			ModelAndView mv = new ModelAndView();
			mv.setViewName("mainViews/mainlodgelistmo");
			System.out.println(pageNo);
			mv.addObject("lodgeList", result);
			mv.addObject("totalcount", totalcount);
			mv.addObject("pageNo", pageNo);
			mv.addObject("startNo", startNo);
			System.out.println(startNo);
			mv.addObject("endNo", endNo);
			mv.addObject("pNo", pNo);
			mv.addObject("nNo", nNo);
			return mv;
		}
		
		//모텔 목록 검색 기능
		//지역으로
		@RequestMapping(value="/mainViews/mainlodsearchmo.trip", method = RequestMethod.GET)
		public ModelAndView mainlodsearchmo(String page, String searchtext, LodgeVO vo) {
			int pageNo = 1;

			if(page != null) pageNo = Integer.parseInt(page);

			int totalcount = mainService.mainLodgeListmose(vo, searchtext);
			int pNo = 1;
			int nNo = totalcount;
			if(pageNo > 1){
				pNo = pageNo-1;
			}
			if(pageNo < totalcount){
				nNo = pageNo+1;
			}
			int startNo = 1;
			int endNo = totalcount;
				
			List<LodgeVO> result = null;
			System.out.println(searchtext);
				result = mainService.mainlodgelistsermo(pageNo, vo, searchtext);
				ModelAndView mv = new ModelAndView();
				mv.setViewName("mainViews/mainlodsearchmo");
				mv.addObject("searchtext", searchtext);
				mv.addObject("lodgeList", result);
				mv.addObject("totalcount", totalcount);
				mv.addObject("pageNo", pageNo);
				mv.addObject("page", page);
				mv.addObject("startNo", startNo);
				mv.addObject("endNo", endNo);
				mv.addObject("pNo", pNo);
				mv.addObject("nNo", nNo);
				System.out.println(searchtext);
				return mv;
		
		}
		
		//숙소 테이블 중 카테고리가 '게스트하우스'인 곳의 리스트를 띄워라
				@RequestMapping(value="/mainViews/mainlodgelistge.trip", method = RequestMethod.GET)
				public ModelAndView mainlodgelistge(String page, LodgeVO vo) {

					int pageNo = 1;

					if(page != null) pageNo = Integer.parseInt(page);

					int totalcount = mainService.mainLodgePagege(vo);
					int pNo = 1;
					int nNo = totalcount;
					if(pageNo > 1){
						pNo = pageNo-1;
					}
					if(pageNo < totalcount){
						nNo = pageNo+1;
					}
					int startNo = 1;
					int endNo = totalcount;
				
					System.out.println(startNo);
					List<LodgeVO> result = mainService.mainLodgeListge(pageNo);
					ModelAndView mv = new ModelAndView();
					mv.setViewName("mainViews/mainlodgelistge");
					System.out.println(pageNo);
					mv.addObject("lodgeList", result);
					mv.addObject("totalcount", totalcount);
					mv.addObject("pageNo", pageNo);
					mv.addObject("startNo", startNo);
					System.out.println(startNo);
					mv.addObject("endNo", endNo);
					mv.addObject("pNo", pNo);
					mv.addObject("nNo", nNo);
					return mv;
				}
				
				//게스트하우스 목록 검색 기능
				//지역으로
				@RequestMapping(value="/mainViews/mainlodsearchge.trip", method = RequestMethod.GET)
				public ModelAndView mainlodsearchge(String page, String searchtext, LodgeVO vo) {
					int pageNo = 1;

					if(page != null) pageNo = Integer.parseInt(page);

					int totalcount = mainService.mainLodgeListge(vo, searchtext);
					int pNo = 1;
					int nNo = totalcount;
					if(pageNo > 1){
						pNo = pageNo-1;
					}
					if(pageNo < totalcount){
						nNo = pageNo+1;
					}
					int startNo = 1;
					int endNo = totalcount;
						
					List<LodgeVO> result = null;
					System.out.println(searchtext);
						result = mainService.mainlodgelistserge(pageNo, vo, searchtext);
						ModelAndView mv = new ModelAndView();
						mv.setViewName("mainViews/mainlodsearchge");
						mv.addObject("searchtext", searchtext);
						mv.addObject("lodgeList", result);
						mv.addObject("totalcount", totalcount);
						mv.addObject("pageNo", pageNo);
						mv.addObject("page", page);
						mv.addObject("startNo", startNo);
						mv.addObject("endNo", endNo);
						mv.addObject("pNo", pNo);
						mv.addObject("nNo", nNo);
						System.out.println(searchtext);
						return mv;
				
				}
				
	//가이드 상세페이지 조회기능			
	@RequestMapping(value="/mainViews/mainguidedetail.trip", method = RequestMethod.GET)
	public ModelAndView mainguidedetail(String page, GuideTourVO vo, String programName) {
		
		//넘겨받은 가이드 프로그램명의 가이드 정보
		GuideTourVO result = mainService.mainguidedetail(programName);
		System.out.println(result.getProgramName());
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);
		
		//고객 후기 페이지 넘버 구하기
		int totalcount = mainService.productRevboPagega(programName);
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
					pNo = pageNo-1;
		}
		if(pageNo < totalcount){
					nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;	
		
		//고객 후기 리스트 
		List<ProductRevboVO> resultList = mainService.productRevboListga(programName, pageNo);		
		
		 //필요한 값 모델엔뷰로 리턴
		 ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainguidedetail");
		System.out.println(pageNo);
		mv.addObject("RevboList", resultList);
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("page", page);
		mv.addObject("startNo", startNo);
		System.out.println(startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		mv.addObject("programName", programName);
		mv.addObject("guidetour", result);
		return mv;
	}
	
	//숙소 상세페이지 조회기능
	@RequestMapping(value="/mainViews/mainlodgedetail.trip", method = RequestMethod.GET)
	public ModelAndView mainlodgedetail(String page, LodgeVO vo, String lodId) {
	
		//넘겨받은 숙소번호의 숙소 정보
		LodgeVO result = mainService.mainlodgedetail(vo);
		
		//숙소에 해당된 객실 정보 조회
		List<RoomVO> resultroom =  mainService.mainroomlist(vo);
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);
		int lodIdNum = Integer.parseInt(lodId);
		
		//고객 후기 페이지 넘버 구하기
		int totalcount = mainService.productRevboPage(lodIdNum);
		int pNo = 1;
		int nNo = totalcount;
		if(pageNo > 1){
			pNo = pageNo-1;
		}
		if(pageNo < totalcount){
			nNo = pageNo+1;
		}
		int startNo = 1;
		int endNo = totalcount;		
		
		System.out.println(startNo);
		//고객 후기 리스트 
		List<ProductRevboVO> resultList = mainService.productRevboList(lodIdNum, pageNo);
		
		 //필요한 값 모델엔뷰로 리턴
		 ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainlodgedetail");
		System.out.println(pageNo);
		mv.addObject("RevboList", resultList);
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("page", page);
		mv.addObject("startNo", startNo);
		System.out.println(startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		mv.addObject("lodId", lodId);
		mv.addObject("lodge", result);
		mv.addObject("roomList", resultroom);
		return mv;

	}
	
	//숙소-예약-화면에서 넘겨받은값들 예약 페이지로 끌고가기
	@RequestMapping("/mainViews/mainloreservation.trip")
	public ModelAndView mainloreservation(String reservName, String reservTel, String userId, 
			String productIdi, String peakPrice, String offPrice, String peakSumStart, String peakSumExit, String peakWinStart, String peakWinExit, String maxPeople) {
		System.out.println("kk" + offPrice);
		System.out.println("hh" + peakSumExit);
		System.out.println(maxPeople);
		int maxPe = Integer.parseInt(maxPeople);
		int productId = Integer.parseInt(productIdi);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("reservName", reservName);
		mv.addObject("reservTel", reservTel);
		mv.addObject("userId", userId);
		mv.addObject("productId", productIdi);
		mv.addObject("peakPrice", peakPrice);
		mv.addObject("offPrice", offPrice);
		mv.addObject("peakSumStart", peakSumStart);
		mv.addObject("peakSumExit", peakSumExit);
		mv.addObject("peakWinStart", peakWinStart);
		mv.addObject("peakWinExit", peakWinExit);
		mv.addObject("maxPeople", maxPe);
		
		mv.setViewName("mainViews/mainloreservation");
		return mv;
	}
	
	//숙소-예약-화면에서 넘겨받은값들 예약 페이지로 끌고가서-날짜확인 
		@RequestMapping("/mainViews/mainloservationDay.trip")
		public ModelAndView mainloservationDay(ReservationVO vo) { 
			List<ReservationVO> result = mainService.mainlosevDate(vo);
			ModelAndView mv = new ModelAndView();
			mv.addObject("dateList", result);
			
			mv.addObject("productId", vo.getProductId());
			System.out.println(vo.getProductId());
			mv.setViewName("mainViews/mainloservationDay");
			return mv;
		}
		
		@RequestMapping(value = "/mainViews/idCheck.trip",
				produces = "application/text;charset=utf-8")
		//*****************************************
		//AJAX
		@ResponseBody
		public String idCheck(String checkInDate2, String checkOut2, String productId){
			int pId  = Integer.parseInt(productId);
			int result = mainService.idCheck_Login(checkInDate2, checkOut2, pId);
			System.out.println(result);
			String message = "이미 사용중입니다";
			if(result > 0) {
				message = "사용가능한 아이디입니다";
			}
			/***
			 * 추후에는 보내는 테이타는 JSON구조로 만드시고(JSON 라이브러리 필요)
			 * 그 JSON을 문자열로 변환해서 리턴함
			 * 
			 */
			return message;
			//****** 리턴형이 String 인 경우 원래는 뷰페이지 지정이여야 하지만
			// AJAX인 경우는 결과 리턴
		}
		
	@RequestMapping("/mainViews/maingureservation.trip")
	public String maingureservation() {
		return "/mainViews/maingureservation";
		
	}
	
	@RequestMapping("/mainViews/mainerror.trip")
	public String mainerror() {
		return "/mainViews/mainerror";
		
	}
}
