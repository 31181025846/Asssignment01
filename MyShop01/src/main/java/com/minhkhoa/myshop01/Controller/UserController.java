package com.minhkhoa.myshop01.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.minhkhoa.myshop01.Entity.UsersEntity;
import com.minhkhoa.myshop01.Services.UserServices;

@RestController
@RequestMapping("/api/user")
public class UserController {

	private UserServices services;

	@Autowired
	public UserController(UserServices services) {
		this.services = services;
	}

	@GetMapping("/")
	public ResponseEntity<List<UsersEntity>> findAll() {
		List<UsersEntity> users = services.findAll();
		if (users.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(users, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<UsersEntity> getUserId(@PathVariable Long id) {
		Optional<UsersEntity> users = services.findById(id);
		if (!users.isPresent()) {
			return new ResponseEntity<>(users.get(), HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(users.get(), HttpStatus.OK);
	}

	@PostMapping("/")
	public ResponseEntity<UsersEntity> insertUser(@RequestBody UsersEntity user) {
		services.save(user);
		return new ResponseEntity<>(user, HttpStatus.OK);
	}

	@PutMapping("/{id}")
	public ResponseEntity<UsersEntity> updateUser(@PathVariable Long id, @RequestBody UsersEntity user) {
		Optional<UsersEntity> currUser = services.findById(id);
		if (!currUser.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		currUser.get().setUsername(user.getUsername());
		currUser.get().setPassword(user.getPassword());
		services.save(currUser.get());
		return new ResponseEntity<>(currUser.get(), HttpStatus.OK);
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<UsersEntity> deteleUser(@PathVariable Long id) {
		Optional<UsersEntity> users = services.findById(id);
		if (!users.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		services.delete(users.get());
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

}
