package com.minhkhoa.myshop01.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minhkhoa.myshop01.dto.UsersDto;
import com.minhkhoa.myshop01.sercurity.services.UserDetailsServiceImpl;
import com.minhkhoa.myshop01.services.UserServices;

@RestController
@RequestMapping("api/user")
public class UserController {

	private UserServices userServices;
	private UserDetailsServiceImpl userDetailsServiceImpl;

	@Autowired
	public UserController(UserServices userServices, UserDetailsServiceImpl userDetailsServiceImpl) {
		super();
		this.userServices = userServices;
		this.userDetailsServiceImpl = userDetailsServiceImpl;
	}

	// GET ALL USERS
	@GetMapping("/")
	public ResponseEntity<List<UsersDto>> findAllUsers() {
		List<UsersDto> user = userServices.findAll();
		if (user.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(user, HttpStatus.OK);
	}

	// GET USER BY ID
	@GetMapping("/{id}")
	public ResponseEntity<UsersDto> getUserById(@PathVariable Long id) {
		UsersDto user = userServices.findById(id);
		return new ResponseEntity<>(user, HttpStatus.OK);
	}

	// GET USER BY USERNAME
	@GetMapping("/{username}")
	public ResponseEntity<UsersDto> getUserByUsername(@PathVariable String username) {
		UsersDto user = (UsersDto) userDetailsServiceImpl.loadUserByUsername(username);
		return new ResponseEntity<>(user, HttpStatus.OK);
	}

	// UPDATE USER

	@PutMapping("/{id}")
	public ResponseEntity<UsersDto> updateUser(@PathVariable Long id,@Valid @RequestBody UsersDto user) {
		userServices.update(id, user);
		return new ResponseEntity<>(user, HttpStatus.OK);
	}

	// DELETE PRODUCT

	@DeleteMapping("/{id}")
	public ResponseEntity<UsersDto> deteleUser(@PathVariable Long id) {

		userServices.findById(id);
		userServices.delete(id);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
}
