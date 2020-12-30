package com.zzTourr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.dao.HotelDAO;
import com.zzTourr.domain.AdminVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.MgrVO;
import com.zzTourr.service.HotelService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class HotelController {
	
	@Autowired
	HotelDAO hotel;
	
	@Autowired
	private HotelService hotelService;
	
	// 로그인 회원가입 페이지 띄우기
	@RequestMapping("/hotelindex.trip")
	public String index() {
		return "hotelViews/hotellogin";
	}
	// 회원가입 페이지 이동 
	@RequestMapping("ownerInsert.trip")
	public String ownerInsert() {
		return "hotelViews/hotelNewOwner";
	}
	
	// 회원가입 
	
	@RequestMapping("newOwner.trip")
	public ModelAndView newOwner(MgrVO vo){
		System.out.println("hotelController : JOIN 회원가입aaaaaaaaaaaaaaaaaaaaaa");
		
		hotel.MgrInsert(vo);
		
		ModelAndView mv = new ModelAndView();

		String message = "회원가입 성공";
		
		/*
		 * if(result==1) { message = vo.getMgrName() + "님 가입되셨습니다. 로그인해주세요"; }else {
		 * message = "회원가입 실패"; }
		 */
		mv.setViewName("hotelViews/hotellogin");
		mv.addObject("message", message);
				
		return mv;
	}
	
	// 로그인해서 메인페이지로 이동 
	@RequestMapping("ownerlogin.trip")
	public ModelAndView login(MgrVO vo, HttpSession session) {
		System.out.println("HotelController : login / 로그인");
		
		System.out.println(vo.toString());
		
		MgrVO result = hotel.Mgrlogin(vo);
		ModelAndView mv = new ModelAndView();
		String message = null;
		System.out.println("1234");
		System.out.println(result.getOwnerName());
		
		if(result==null || result.getOwnerId()==null) {
			mv.setViewName("adminViews/adminLogin");
			message = "id / pw 를 확인하세요";
			mv.addObject("message", message);
			
			return mv;
		}
		else {
			// 세션에 이름값 , 번호 저장 
			session.setAttribute("login", result.getOwnerName());
			session.setAttribute("lodtel", result.getLodTel());
			session.setAttribute("ownerId", result.getOwnerId());
			mv.setViewName("hotelViews/hotelmain");
			message = vo.getOwnerName() + "님 접속";
			
			return mv;
		}
		
	}
	// 마이페이지 띄우기 
	@RequestMapping("Mypage.trip")
	public ModelAndView Mypage(HttpSession session) {
		System.out.println("HotelController : mypage / 마이페이지");
		MgrVO vo = new MgrVO();
		vo.setLodTel((String) session.getAttribute("lodtel"));
		System.out.println(vo.toString());
		MgrVO result = hotel.selMgr(vo);
		ModelAndView mv = new ModelAndView();
		System.out.println(result.getOwnerName());
		mv.addObject("vo", result);
		mv.setViewName("hotelViews/hotelMypage");
		return mv;
	}
	
	@RequestMapping("updateOwner.trip")
	public ModelAndView updateOwner(MgrVO vo, HttpSession session) {
		System.out.println("HotelController : updateOwner / 주인정보수정");
		vo.setOwnerId((String)session.getAttribute("ownerId"));
		hotel.updateMgr(vo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hotelViews/hotelmain");
		return mv;
	} 
	
	
	@RequestMapping("newLodge.trip")
	public String newLodge() {
		return "hotelViews/hotelNewLodge";
	}
	
	// 새로운 숙소 
	@RequestMapping("LodgeInsert.trip")
	public ModelAndView LodgeInsert(LodgeVO vo) {
		System.out.println("hotelController : LodgeInsert 숙소추가aaaaaaaaaaaaaaaaaaaaaa");
		hotel.LodgeInsert(vo);
		
		ModelAndView mv = new ModelAndView();

		String message = "숙소 추가 성공";
		mv.setViewName("hotelViews/hotelNewRoom");
		mv.addObject("message", message);
				
		return mv;
	}

	@RequestMapping("ResMgr.trip")
	public String ResMgr() {
		return "hotelViews/hotelResMgr";
	}
	@RequestMapping("ModifyLodge.trip")
	public String ModifyLodge() {
		return "hotelViews/hotelModifyLodge";
	}
	
	@RequestMapping("salHis.trip")
	public String salHis() {
		return "hotelViews/hotelSalHis";
	}
	
	@RequestMapping("priceEdit.trip")
	public String priceEdit() {
		return "hotelViews/hotelPriceEdit";
	}
	@RequestMapping("Review.trip")
	public String review() {
		return "hotelViews/hotelReview";
	}
	
	
}
