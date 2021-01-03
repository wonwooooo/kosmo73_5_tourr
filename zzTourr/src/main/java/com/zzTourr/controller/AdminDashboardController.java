package com.zzTourr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zzTourr.domain.ChartVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.service.AdminService;

@Controller
public class AdminDashboardController {
	
	@Autowired
	private AdminService adminService;

	
	/*****************************************************************************************
	 *  dashboard 관련 controller
	 *****************************************************************************************/
	
	/*
	@RequestMapping("/adminViews/dashboard/adminChart.trip")
	public String chart(Model m) {
		//List<Map<String,Object>> chart1 = adminService.chart1();
		//List<Map<String,Object>> chart2 = adminService.chart2("2012");
		
		List<ChartVO> chart1 = adminService.chart1();
		List<ChartVO> chart2 = adminService.chart2("2012");

		
		m.addAttribute("chart1", chart1);
		m.addAttribute("chart2", chart2);
		
		return "adminViews/dashboard/adminChart";
		
	}
	*/
	//차트
	
	@RequestMapping(value = "adminChart.trip",
			produces = "application/text;charset=utf-8")
	//*****************************************
	//AJAX
	@ResponseBody
	public String chart3(){
	

		String message = null;
		
		int map = adminService.chart3();
		String me = String.valueOf(map);
		
		message = me;
		System.out.println(message);
		
		
	
		
		return message;
		/***
		 * 추후에는 보내는 테이타는 JSON구조로 만드시고(JSON 라이브러리 필요)
		 * 그 JSON을 문자열로 변환해서 리턴함
		 * 
		 */
		
		//****** 리턴형이 String 인 경우 원래는 뷰페이지 지정이여야 하지만
		// AJAX인 경우는 결과 리턴
	}

	
	
}
