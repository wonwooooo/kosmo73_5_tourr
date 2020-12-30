package com.zzTourr.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zzTourr.domain.AdminVO;
import com.zzTourr.service.AdminService;

@Controller
public class AdminEnterController {
	
	@Autowired
	private AdminService adminService;

	
	/*****************************************************************************************
	 * 	로그인 관련 controller
	 *****************************************************************************************/	
	
	// 회원가입 _201222 원우
	@RequestMapping("enter/adminInsert.trip")
	public ModelAndView join(AdminVO vo) {
		System.out.println("AdminEnterController : join / 회원가입");
		
		int result = adminService.idInsert(vo);
		ModelAndView mv = new ModelAndView();
		String message = null;
		
		if(result > 0) {
			message = vo.getAdminName() + "님 가입 ㅊㅊ";
		}
		else {
			message = "회원가입 실패";
		}
		
		mv.setViewName("adminViews/enter/adminLogin");
		mv.addObject("message", message);
		
		return mv;
		
	}	// end of join
	
	
	
	// 중복확인 _201230 원우
	@RequestMapping(value="adminViews/enter/idCheck.trip",method = RequestMethod.POST)	// 값으로 전달하려고 할 때
	public @ResponseBody String idCheck(@RequestParam("id") String id) {
		System.out.println("AdminEnterController : idCheck / 중복확인");
		
		//String id = req.getParameter("id");
		int result = adminService.idCheck(id);
		System.out.println("result : " + result);
		
		String message = null;
		
		if(result ==1) {
			message = "NO";
		}
		else {
			message = "YES";
		}
		
		return message;
		
	}
	
	
	
	// 로그인 _201223 원우
	@RequestMapping("enter/login.trip")
	public ModelAndView login(AdminVO vo, HttpSession session) {
		System.out.println("AdminEnterController : login / 로그인");
		
		AdminVO result = adminService.adminLogin(vo);
		ModelAndView mv = new ModelAndView();
		String alert = null;
		
		if(result==null || result.getAdminId()==null) {
			mv.setViewName("adminViews/enter/adminLogin");
			alert = "id / pw 를 확인하셈";
			mv.addObject("alert", alert);
			
			return mv;
		}
		else {
			session.setAttribute("login", result.getAdminName());
			
			Cookie setCookie = new Cookie("userInputId", result.getAdminId()); // 쿠키 이름을 name으로 생성
			mv.addObject(setCookie);	//  mv에 쿠키 추가
			
			mv.setViewName("redirect:/main/adminMain.trip");
				/*
				 * 	로그인이 완료되면 main.jsp 으로 리다이렉트 _201224 원우
				 * 	원래 mv.setViewName("adminViews/adminMain") 이었는데
				 * 	이렇게 하면	url 에 adminLogin 으로 찍혀서
				 * 	보기 싫어서 redirect 함.
				 * 
				 * 	https://golddigger.tistory.com/13
				 */
			alert = vo.getAdminName() + "님 접속";
			
			return mv;
		}
		
	}	// end of login
	
	
	
	// 로그인 후 메인으로 리다이렉트 _201224 원우
	@RequestMapping("main/adminMain.trip")
	public ModelAndView mainGo() {
		System.out.println("AdminEnterController : mainGo / 메인");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminViews/main/adminMain");
		
		return mv;
		
	}	// end of mainGo
	
		
	
	// 로그아웃 _201230 원우
	@RequestMapping("adminViews/enter/adminLogout.trip")
	public String logout(Model m, HttpSession session) {
		System.out.println("AdminEnterController : logout / 로그아웃");
		
		int result = 0;
		
        if (session.getAttribute("login") != null) {
            //로그 아웃시에 모든 쿠키 값들을 비워줌
            session.invalidate(); //session 초기화
            System.out.println("로그아웃되나요");
            result = 1;
            
        }
        
        m.addAttribute("result", result);
		
		return "adminViews/enter/adminLogout";
		
	}	// end of logout
	
	
	
	// 로그아웃 후 로그인 페이지로 이동 _201230
	@RequestMapping("adminViews/enter/adminLogin.trip")
	public String index() {
		System.out.println("AdminEnterController : index / 로그인페이지로이동 ");
		
		return "adminViews/enter/adminLogin";
		
	}	// end or index
	
	
	
	
	/*****************************************************************************************
	 *  페이지 이동만 하는 controller
	 *****************************************************************************************/
	
	// 페이지만 이동할 것들 _201222 원우
	/*
	 * 	회원가입 페이지 / adminJoin
	 * 	비번찾기 / adminForgotPw
	 */
	@RequestMapping("enter/{url}.trip")
	public String urlPass(@PathVariable String url, Model model) {
		System.out.println("AdminEnterController : urlPass + " + url);
		
		// 첫 로그인과 로그아웃 후 로그인 구분하기 위해
		int in = 1;
		model.addAttribute("in", in);
		
		return "adminViews/enter/"+url;
		
	}	// end or urlPass


	
	
	
	/*****************************************************************************************
	 *  Main 페이지 controller
	 *****************************************************************************************/
	@RequestMapping("adminViews/main/adminMain")
	public void mainView() {
		System.out.println("AdminEnterController : mainView / 메인클릭");
		
	}	// end of mainView
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
