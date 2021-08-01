package com.minhkhoa.myshop01.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("*")
@RestController
public class PublicController {

	@GetMapping("/api/v1/public")
	public String home() {

		return "Day la trang chu!";
	}
	@GetMapping("/api/v1/admin")
	public String admin() {
		return "";
	}
	@GetMapping("/api/v1/user")
	public String user() {
		return"";
	}

}
