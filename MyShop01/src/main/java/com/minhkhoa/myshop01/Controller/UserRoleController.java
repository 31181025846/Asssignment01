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

import com.minhkhoa.myshop01.Entity.UserRoleEntity;
import com.minhkhoa.myshop01.Services.UserRoleServices;

@RestController
@RequestMapping("/api/userrole")
public class UserRoleController {

	private UserRoleServices userRoleServices;

	@Autowired
	public UserRoleController(UserRoleServices userRoleServices) {
		this.userRoleServices = userRoleServices;
	}

	@GetMapping("/")
	public ResponseEntity<List<UserRoleEntity>> findAllRoles() {
		List<UserRoleEntity> userRoles = userRoleServices.findAll();
		if (userRoles.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(userRoles, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<UserRoleEntity> getRolessById(@PathVariable Long id) {
		Optional<UserRoleEntity> roles = userRoleServices.findById(id);
		if (!roles.isPresent()) {
			return new ResponseEntity<>(roles.get(), HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(roles.get(), HttpStatus.OK);
	}

	@PostMapping("/")
	public ResponseEntity<UserRoleEntity> insertRole(@RequestBody UserRoleEntity role) {
		userRoleServices.save(role);
		return new ResponseEntity<>(role, HttpStatus.OK);
	}

	@PutMapping("/{id}")
	public ResponseEntity<UserRoleEntity> updateRole(@PathVariable Long id, @RequestBody UserRoleEntity role)
	{
		Optional<UserRoleEntity> currRole = userRoleServices.findById(id);
		if (!currRole.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		currRole.get().setUser_role_name(role.getUser_role_name());
		userRoleServices.save(currRole.get());
		return new ResponseEntity<>(currRole.get(), HttpStatus.OK);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<UserRoleEntity> deteleRole(@PathVariable Long id)
	{
		Optional<UserRoleEntity> role = userRoleServices.findById(id);
		if (!role.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		userRoleServices.delete(role.get());
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
	
}
