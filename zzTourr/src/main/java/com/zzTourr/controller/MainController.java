package com.zzTourr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	
	@RequestMapping("mainViews/mainindex.trip")
	public String mainindex() {
		return "/mainViews/mainindex";
		
	}
	
	@RequestMapping("/mainViews/mainfreeboardlist.trip")
	public String mainfreeboardlist() {
		return "/mainViews/mainfreeboardlist";
		
	}	
	
	@RequestMapping("/mainViews/mainrvboardlist.trip")
	public String mainrvboardlist() {
		return "/mainViews/mainrvboardlist";
		
	}	
	
	@RequestMapping("/mainViews/mainguidelist.trip")
	public String mainguidelist() {
		return "/mainViews/mainguidelist";
		
	}	
	
	@RequestMapping("/mainViews/mainlogin.trip")
	public String mainlogin() {
		return "/mainViews/mainlogin";
		
	}	
	
	
	@RequestMapping("/mainViews/mainlodgelist.trip")
	public String mainlodgelist() {
		return "/mainViews/mainlodgelist";
		
	}
	
	@RequestMapping("/mainViews/mainpassmiss.trip")
	public String mainpassmiss() {
		return "/mainViews/mainpassmiss";
		
	}
	
	@RequestMapping("/mainViews/mainguidedetail.trip")
	public String mainguidedetail() {
		return "/mainViews/mainguidedetail";
		
	}
	
	@RequestMapping("/mainViews/mainlodgedetail.trip")
	public String mainlodgedetail() {
		return "/mainViews/mainlodgedetail";
		
	}
	
	@RequestMapping("/mainViews/mainloreservation.do")
	public String mainloreservation() {
		return "/mainViews/mainloreservation";
		
	}
	
	@RequestMapping("/mainViews/maingureservation.trip")
	public String maingureservation() {
		return "/mainViews/maingureservation";
		
	}
	
	@RequestMapping("/mainViews/mainerror.trip")
	public String mainerror() {
		return "/mainViews/mainerror";
		
	}
}
