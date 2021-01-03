package com.zzTourr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.domain.PaymentVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.UsersVO;
import com.zzTourr.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	//회원가입 폼
	@RequestMapping("/customerViews/customerJoin.trip")
	public String customerJoin() {
		return "/customerViews/customerJoin";
		
	}
	
	//회원가입 작성
	@RequestMapping("/customerViews/customerInsert.trip")
	public ModelAndView customerInsert(UsersVO vo) {
		customerService.customerInsert(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("customerService", vo);
		mv.setViewName("redirect:/mainViews/mainindex.trip"); //회원가입 끝낸 후, 넘겨보낼 페이지 (나중엔 메인페이지로 연결)
		return mv;
		
	}
	
	//회원정보 조회
	@RequestMapping("/customerViews/customerInfo.trip")
	public ModelAndView customerInfo(String userId, UsersVO vo) {
		UsersVO uvo = customerService.users(userId);
		System.out.println(uvo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("users", uvo);
		mv.addObject("userId", userId);
		mv.setViewName("/customerViews/customerInfo");
		return mv;
		      
	}
	
	//회원정보 수정
	@RequestMapping("/customerViews/customerModify.trip")
	public ModelAndView customerModify(UsersVO vo) {
		customerService.customerModify(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("customerService", vo);
		mv.setViewName("redirect:/mainViews/mainindex.trip");

	//	mv.setViewName("redirect:/mainViews/mainindex.trip");
		return mv;
		
	}
	
	//아이디 중복 검사
//	@RequestMapping("/customerViews/customerIdcheck.trip")
//	public String customerIdcheck() {
//		return "/customerViews/customerIdcheck";
		
//	}
	
	//아이디 중복 검사
	@RequestMapping(value = "/customerViews/idChec.trip",
			produces = "application/text;charset=utf-8")
	//*****************************************
	//AJAX
	@ResponseBody
	public String idChec(UsersVO vo){
		int result = customerService.idChecks(vo);
		String message = "이미 사용중입니다";
		if(result == 0) {
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
	
	
	//예약내역
	@RequestMapping("/customerViews/customerReservList.trip")
	public ModelAndView customerReservList(String userId, String page) {
		//예약 리스트 출력
		//userId가 세션값의 ID 일때 예약 VO의 리스트가 뜨도록
		int pageNo = 1;

		if(page != null) pageNo = Integer.parseInt(page);

		int totalcount = customerService.resPage();

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
		System.out.println(userId);
		
		List<ReservationVO> rvo = customerService.reservation(userId, pageNo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.addObject("userId", userId);
		mv.addObject("resList", rvo);
		mv.addObject("totalcount", totalcount);
		mv.addObject("pageNo", pageNo);
		mv.addObject("startNo", startNo);
		mv.addObject("endNo", endNo);
		mv.addObject("pNo", pNo);
		mv.addObject("nNo", nNo);
		mv.setViewName("/customerViews/customerReservList");
		return mv;
		
	}
	
	//결제하기
	@RequestMapping("/customerViews/customerPayment.trip")
	public ModelAndView customerPayment(PaymentVO vo) {
		customerService.customerUpdate(vo);
		customerService.customerPayment(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("customerService", vo);
		mv.setViewName("redirect:/mainViews/mainindex.trip"); 
		return mv;
		
	} 
	
	//결제내역에서 후기작성을 눌렀을 때, 후기작성 폼으로 연결되도록
	@RequestMapping("/customerViews/customerInputProdRev.trip")
	public ModelAndView customerInputProdRev(String resId, String productId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/customerViews/customerInputProdRev");
		mv.addObject("resId", resId);
		mv.addObject("productId", productId);
	   return mv;
		     
	}

	//customerRevInsert.trip
	
	//상품후기 내역- 나중에 수정
//	@RequestMapping("/customerViews/customerProdRevboardList.trip")
//	public ModelAndView customerProdRevboardList(String resId, String productId) {
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("resId", resId);
//		mv.addObject("productId", productId);
//	   return mv;
//	      
//	}
	
	//상품후기 내역
	@RequestMapping("/customerViews/customerProdRevboardList.trip")
	public ModelAndView customerProdRevboardList(String resId, String productId) {
		//예약 리스트 출력
		//userId가 세션값의 ID 일때 예약 VO의 리스트가 뜨도록
		System.out.println(resId);
		
		List<ProductRevboVO> pvo = customerService.productrevbo(resId, productId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("resId", resId);
		mv.addObject("productId", pvo);
		mv.setViewName("/customerViews/customerReservList");
		return mv;
		
	}
	
	//상품후기 작성
	@RequestMapping("/customerViews/customerInsertProdRev.trip")
	public ModelAndView customerInsertProdRev(ProductRevboVO vo) {
		customerService.revInsert(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("customerService", vo);
		mv.setViewName("redirect:/mainViews/mainindex.trip"); //회원가입 끝낸 후, 넘겨보낼 페이지 (나중엔 메인페이지로 연결)
		return mv;
			      
	}
	

}