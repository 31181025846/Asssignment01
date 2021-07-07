package com.minhkhoa.myshop01.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minhkhoa.myshop01.Entity.CustomerEntity;
import com.minhkhoa.myshop01.Services.CustomerServices;

@RestController
@RequestMapping("/api/customer")
public class CustomerController {

	private CustomerServices services;
	
	@Autowired
	public CustomerController(CustomerServices services) {
		this.services=services;
	}
	
	@GetMapping("/")
	public ResponseEntity<List<CustomerEntity>> findAllCustomers() {
		List<CustomerEntity> customers = services.findAll();
		if (customers.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(customers, HttpStatus.OK);
	}
}
