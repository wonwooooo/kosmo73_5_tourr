package com.zzTourr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
	 
//	@RequestMapping("/customerViews/customerReserv.trip")
//	public String customerReserv() {
//		return "/customerViews/customerReserv";
//		
//	}
	
	@RequestMapping("/customerViews/customerCart.trip")
	public String customerCart() {
		return "/customerViews/customerCart";
		
	}
	
//	@RequestMapping("/customerViews/customerProdRevboard.trip")
//	   public String customerProdRevboard() {
//	      return "/customerViews/customerProdRevboard";
//	      
//	   }
	
//	@RequestMapping("/customerViews/customerQna.trip")
//	   public String customerQna() {
//	      return "/customerViews/customerQna";
//	      
//	   }
	
	
//	@RequestMapping("/customerViews/customerModify.trip")
//	   public String customerModify() {
//	      return "/customerViews/customerModify";
//	      
//	   }
//	
	
	
	
}