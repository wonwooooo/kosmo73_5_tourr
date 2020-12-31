package com.zzTourr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminProductController {
	

	/*****************************************************************************************
	 *  product 관련 controller
	 *****************************************************************************************/
	
	@RequestMapping("/adminViews/product/adminHotelProdList.trip")
	public ModelAndView hotelProdList() {
		System.out.println("AdminProductController : hotelProdList / 호텔리스트");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminViews/product/adminHotelProdList");
		
		return mv;
		
	}
	
	
	
	@RequestMapping("/adminViews/product/adminGuideProdList")
	public ModelAndView guideProdList() {
		System.out.println("AdminProductController : guideProdList / 가이드리스트");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminViews/product/adminGuideProdList");
		
		return mv;
		
	}
	
	
	
}
