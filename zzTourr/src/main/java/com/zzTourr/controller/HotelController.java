package com.zzTourr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {
	@RequestMapping("hotelindex.trip")
	public String index() {
		return "hotelViews/hotellogin";
	}
	
	@RequestMapping("ownerlogin.trip")
	public String login(String ownerId, String ownerPass ) {
		return "hotelViews/hotelmain";
	}
	
	@RequestMapping("newOwner.trip")
	public String newOwner() {
		return "hotelViews/hotelNewOwner";
	}
	
	@RequestMapping("newLodge.trip")
	public String newLodge() {
		return "hotelViews/hotelNewLodge";
	}
	
	@RequestMapping("ModifyLodge.trip")
	public String ModifyLodge() {
		return "hotelViews/hotelModifyLodge";
	}
	
	@RequestMapping("salHis.trip")
	public String salHis() {
		return "hotelViews/hotelSalHis";
	}
	
	@RequestMapping("ResMgr.trip")
	public String resMgr() {
		return "hotelViews/hotelResMgr";
	}
	
	@RequestMapping("priceEdit.trip")
	public String priceEdit() {
		return "hotelViews/hotelPriceEdit";
	}
	@RequestMapping("Review.trip")
	public String review() {
		return "hotelViews/hotelReview";
	}
	@RequestMapping("Mypage.trip")
	public String Mypage() {
		return "hotelViews/hotelMypage";
	}
}
