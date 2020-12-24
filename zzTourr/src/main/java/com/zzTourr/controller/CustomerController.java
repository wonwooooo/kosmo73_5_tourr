package com.zzTourr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
	 
	@RequestMapping("/customerViews/customerCart.trip")
	   public String customerCart() {
	      return "/customerViews/customerCart";
	      
	   }
	

	
}