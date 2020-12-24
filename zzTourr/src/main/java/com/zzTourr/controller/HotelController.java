package com.zzTourr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {
	
	@RequestMapping("ownerlogin.trip")
	public String login(String ownerId, String ownerPass ) {
		return "Hotelview/hotelmain";
	}
	@RequestMapping("newOwner.trip")
	public String newOwner() {
		return "Hotelview/hotelNewOwner";
	}
	
}
