package com.zzTourr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.domain.AdminVO;
import com.zzTourr.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	
	// 회원가입 _201222 원우
	@RequestMapping("adminViews/adminIsert.trip")
	public ModelAndView join(AdminVO vo) {
		System.out.println("AdminController : join / 회원가입");
		
		int result = adminService.idInsert(vo);
		ModelAndView mv = new ModelAndView();
		String message = null;
		
		if(result > 0) {
			message = vo.getAdminName() + "님 가입 ㅊㅊ";
		}
		else {
			message = "회원가입 실패";
		}
		
		mv.setViewName("adminViews/adminLogin");
		mv.addObject("message", message);
		
		return mv;
		
	}	// end of join
	
	
	// 중복확인
	// > ajax ..?
	
	
	// 로그인 _201223 원우
	@RequestMapping("adminViews/login.trip")
	public ModelAndView login(AdminVO vo, HttpSession session) {
		System.out.println("AdminController : login / 로그인");
		
		AdminVO result = adminService.adminLogin(vo);
		ModelAndView mv = new ModelAndView();
		String message = null;
		
		if(result==null || result.getAdminId()==null) {
			mv.setViewName("adminViews/adminLogin");
			message = "id / pw 를 확인하셈";
			mv.addObject("message", message);
			
			return mv;
		}
		else {
			session.setAttribute("login", result.getAdminName());
			mv.setViewName("adminViews/adminMain");
			message = vo.getAdminName() + "님 접속";
			
			return mv;
		}
		
	}	// end of login
	
	
	// 페이지만 이동할 것들 _201222 원우
	/*
	 * 	회원가입 페이지 / adminJoin
	 * 
	 */
	@RequestMapping("/adminViews/{url}.trip")
	public String urlPass(@PathVariable String url) {
		System.out.println("AdminController : urlPass + " + url);
		
		return "adminViews/"+url;
		
	}	// end or urlPass
	
	
	
}
