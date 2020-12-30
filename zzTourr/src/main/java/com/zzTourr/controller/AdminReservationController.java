package com.zzTourr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zzTourr.domain.Criteria;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.service.AdminService;

@Controller
public class AdminReservationController {
	
	@Autowired
	private AdminService adminService;
	
	
	/*****************************************************************************************
	 *  reservation 관련 controller
	 *****************************************************************************************/	
	
//	// 객실 예약 목록 페이지 띄우기 _201228 원우
//	@RequestMapping("/adminViews/adminReservList.trip")
//	public ModelAndView reservList() {
//		System.out.println("AdminController : reservList / 예약목록");
//		
//		/*
//		List<ReservationVO> rList = adminService.reservList();
//		mv.addObject("rList", rList);
//		*/
//		
//		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("adminViews/reservation/adminReservList");
//		
//		return mv;
//		
//	}
	
	// 객실 예약 목록 페이지 띄우기 _201228 원우
//	@RequestMapping("/adminViews/reservation/adminReservList.trip")
//	public String reservList(@RequestParam(value="start",defaultValue = "1") int start, @RequestParam(value="end",defaultValue = "3") int end, Model model) {
//		
//		model.addAttribute("start", start);
//		model.addAttribute("end",end);
//		
//		return "/adminViews/reservation/adminReservList";
//		
//	}
//	
//	
//	
//	// 객실 예약 목록 표 띄우기 _201228 원우
//	@RequestMapping("adminViews/reservation/adminAjaxReservList.trip")
//	public String ajaxReservList(HttpServletRequest req, Model m) {
//		System.out.println("AdminController : ajaxReservList / 예약목록");
//		
//		int start = Integer.parseInt(req.getParameter("start"));
//		int end = Integer.parseInt(req.getParameter("end"));
//				
//		HashMap<String, Object> paging = new HashMap<String, Object>();
//		paging.put("start", start);
//		paging.put("end", end);
//		
//		System.out.println("start" +start + " // end" + end);
//
//		List<ReservationVO> tList = adminService.totalReservList(paging);
//		List<ReservationVO> rList = adminService.roomReservList(paging);
//		List<ReservationVO> gList = adminService.guideReservList(paging);
//		
//		m.addAttribute("tList", tList);
//		m.addAttribute("rList", rList);
//		m.addAttribute("gList", gList);
//		
//		return "adminViews/reservation/adminAjaxReservList";
//		
//	}
	
	
	// 예약 리스트 불러오기 _201230
	@RequestMapping("/adminViews/reservation/adminReservList.trip") 
	public String reservList(Model model, @RequestParam Map<String, Object> param, RedirectAttributes attr) {
		System.out.println("AdminReservationController : reservList / 예약목록");
		
		attr.addFlashAttribute("postParam" , param);
		
		return "/adminViews/reservation/adminReservList";
		
	}
	
	
	// 예약 리스트 안의 표? 불러오기 _201230
	@RequestMapping("adminViews/reservation/adminAjaxReservList.trip")
	public String ajaxReservList(Model model,Criteria cri, @RequestParam Map<String, Object> param) throws Exception {
		System.out.println("AdminReservationController : ajaxReservList / 예약목록 띄우기");
		
		model.addAttribute("pageMaker", adminService.pagingInfo(param, cri)); // 전체 목록에만 페이징 처리
		model.addAttribute("tList", adminService.totalReservList(param));  // hashMap -> map으로
		model.addAttribute("rList", adminService.roomReservList(param)); 
		model.addAttribute("gList", adminService.guideReservList(param)); 
		
		return "adminViews/reservation/adminAjaxReservList";
		
	}
	
	
	// 예약 상세
	@RequestMapping("adminViews/reservation/adminReservDetail.trip")
	public ModelAndView reservDetail() {
		System.out.println("AdminReservationController : reservDetail / 예약상세");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminViews/reservation/adminReservDetail");
		
		
		return mv;
		
	}
	
	
	// 예약 상세 내역들 불러오기 _201231
	@RequestMapping("adminViews/reservation/adminAjaxReservDetail.trip")
	public String ajaxReservDetail(Model m) {
		System.out.println("AdminReservationController : ajaxReservDetail / 예약상세 내역");
		
		
		return "adminViews/reservation/adminAjaxReservDetail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
