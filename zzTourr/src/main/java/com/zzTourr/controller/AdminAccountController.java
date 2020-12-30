package com.zzTourr.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.domain.UsersVO;
import com.zzTourr.service.AdminService;

@Controller
public class AdminAccountController {
	
	@Autowired
	private AdminService adminService;
	
	
	/*****************************************************************************************
	 * 	account 관련 controller
	 *****************************************************************************************/
	
	// 회원 리스트 페이지 띄우기 _201228 원우
	@RequestMapping("/adminViews/adminMemberList.trip")
	public String memberList(){
		System.out.println("AdminController : memberList / 회원목록");
		
		//List<UsersVO> mList = adminService.memberList();

		/*
		 *	ModelAndView 로 하려했다가 못 했음
		 * 
		 * 	ModelAndView mv = new ModelAndView();
		 * 	mv.setViewName("adminViews/adminMemberList");
		 * 	mv.addObject("mList", mList); 
		 */
		
		
		/*
		 * 	그래서 Model 로 다시 했었음
		 * 
		 * 	model.addAttribute("mList", mList);
		 */
		
		return "adminViews/account/adminMemberList";
		
	}	// end of memberList
	
	
	
	// ajax 로 회원 목록 불러오기 _201228 원우
	@RequestMapping("/adminViews/adminAjaxMemberList.trip")
	public String ajaxMemberList(Model model){
		System.out.println("AdminController : ajaxMemberList / 회원목록");
		
		List<UsersVO> mList = adminService.memberList();
		
		model.addAttribute("mList", mList);
		
		return "adminViews/account/adminAjaxMemberList";
		
	}	// end of ajaxMemberList
	
	
	
	// 숙소 사장 + 가이드 페이지 띄우기 _201228 원우
	@RequestMapping("/adminViews/adminClientList.trip")
	public ModelAndView clientList() {
		System.out.println("AdminController : clientList / 숙소사장+가이드 목록");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminViews/account/adminClientList");
		
		return mv;
		
	}
	
	
	
	// 숙소 사장 + 가이드 데이터 가져오기 _201229 원우
	@RequestMapping("/adminViews/adminAjaxClientList.trip")
	public ModelAndView ajaxClientList() {
		System.out.println("AdminController : ajaxClientList / 숙소사장+가이드 목록");
		
		List<Map<String, String>> mList = adminService.lodgeclientList();
		
		// List<MgrVO> mList = adminService.lodgeclientList();
		// List<LodgeVO> lList = adminService.lodgeclientList();
		// List<GuideTourVO> gList = adminService.guideclientList();
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("adminViews/account/adminAjaxClientList");
		mv.addObject("mList", mList);
		// mv.addObject("lList", lList);
		// mv.addObject("gList", gList);
		
		System.out.println(mList);
		
		return mv;
		
	}

	
	
}
