package com.zzTourr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		mv.setViewName("redirect:customerInsertQna.trip"); //회원가입 끝낸 후, 넘겨보낼 페이지 (나중엔 메인페이지로 연결)
		return mv;
		
	}
	
	//회원정보 조회
	@RequestMapping("/customerViews/customerInfo.trip")
	public ModelAndView customerInfo(String userId, UsersVO vo) {
		UsersVO uvo = customerService.users(userId);
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
		mv.setViewName("redirect:customerInsertQna.trip");
		return mv;
		
	}
	
	//아이디 중복 검사
	@RequestMapping("/customerViews/customerIdcheck.trip")
	public String customerIdcheck() {
		return "/customerViews/customerIdcheck";
		
	}
	
	//예약내역
	@RequestMapping("/customerViews/customerReservList.trip")
	public ModelAndView customerReservList(String userId) {
		//예약 리스트 출력
		//userId가 세션값의 ID 일때 예약 VO의 리스트가 뜨도록
		System.out.println(userId);
		
		List<ReservationVO> rvo = customerService.reservation(userId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("userId", userId);
		mv.addObject("resList", rvo);
		mv.setViewName("/customerViews/customerReservList");
		return mv;
		
	}
	
	//결제하기
	@RequestMapping("/customerViews/customerPayment.trip")
	public ModelAndView customerPayment(PaymentVO vo) {
		customerService.customerPayment(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("customerService", vo);
		mv.setViewName("redirect:customerInsertQna.trip"); //회원가입 끝낸 후, 넘겨보낼 페이지 (나중엔 메인페이지로 연결)
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
		mv.setViewName("redirect:customerProdRevboardList.trip"); //회원가입 끝낸 후, 넘겨보낼 페이지 (나중엔 메인페이지로 연결)
		return mv;
			      
	}
	

}