package com.zzTourr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.domain.LodgeVO;
import com.zzTourr.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;

	
	@RequestMapping("mainViews/mainindex.trip")
	public String mainindex() {
		return "/mainViews/mainindex";
		
	}
	
	@RequestMapping("/mainViews/mainfreeboardlist.trip")
	public String mainfreeboardlist() {
		return "/mainViews/mainfreeboardlist";
		
	}	
	
	@RequestMapping("/mainViews/mainrvboardlist.trip")
	public String mainrvboardlist() {
		return "/mainViews/mainrvboardlist";
		
	}	
	
	@RequestMapping("/mainViews/mainguidelist.trip")
	public String mainguidelist() {
		return "/mainViews/mainguidelist";
		
	}	
	
	@RequestMapping("/mainViews/mainlogin.trip")
	public String mainlogin() {
		return "/mainViews/mainlogin";
		
	}	
	
	
	//숙소 테이블 중 카테고리가 '펜션'인 곳의 리스트를 띄워라
	@RequestMapping("/mainViews/mainlodgelist.trip")
	public ModelAndView mainlodgelist(LodgeVO vo) {
		List<LodgeVO> result = mainService.mainLodgeList(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainlodgelist");
		mv.addObject("lodgeList", result);
		return mv;
	}
	
	//숙소 테이블 중 카테고리가 '호텔'인 곳의 리스트를 띄워라
	@RequestMapping(value="/mainViews/mainlodgelistho.trip", method = RequestMethod.GET)
	public ModelAndView mainlodgelistho(String page, LodgeVO vo) {
		//String pNum = request.getParameter("page");
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
	
	//숙소 목록 검색 기능
	//제목과 주소로 나누어서 구현하라
	@RequestMapping(value="/mainViews/lodsearch.trip", method = RequestMethod.GET)
	public ModelAndView mainlodgelistser(String searchlo, String searchtext, LodgeVO vo) {
		
		List<LodgeVO> result = null;
		if(searchlo != null && searchlo.equals("lodName")) {
			//searchlo 가 lodname 이면 숙소명 검색
			result = mainService.mainlodgelistserna(vo, searchtext);
			
		}else{
			//searchlo 가 lodAddr 이면 위치 검색
			result = mainService.mainlodgelistserad(vo, searchtext);
			ModelAndView mv = new ModelAndView();
			
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainViews/mainlodgelistho");
		mv.addObject("lodgeList", result);
		return mv;

		
	}
	
	@RequestMapping("/mainViews/mainpassmiss.trip")
	public String mainpassmiss() {
		return "/mainViews/mainpassmiss";
		
	}
	
	@RequestMapping("/mainViews/mainguidedetail.trip")
	public String mainguidedetail() {
		return "/mainViews/mainguidedetail";
		
	}
	
	@RequestMapping("/mainViews/mainlodgedetail.trip")
	public String mainlodgedetail() {
		return "/mainViews/mainlodgedetail";
		
	}
	
	@RequestMapping("/mainViews/mainloreservation.trip")
	public String mainloreservation() {
		return "/mainViews/mainloreservation";
		
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
