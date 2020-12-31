package com.zzTourr.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zzTourr.domain.ChartVO;
import com.zzTourr.service.AdminService;

@Controller
public class AdminDashboardController {
	
	@Autowired
	private AdminService adminService;

	
	/*****************************************************************************************
	 *  dashboard 관련 controller
	 *****************************************************************************************/
	
	
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
	
	
	
	
	
}
