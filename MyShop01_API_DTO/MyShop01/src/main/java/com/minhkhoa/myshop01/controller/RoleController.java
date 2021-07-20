package com.minhkhoa.myshop01.controller;

import java.util.List;

import javax.validation.Valid;

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

import com.minhkhoa.myshop01.dto.UserRoleDto;
import com.minhkhoa.myshop01.services.RoleServices;

@RestController
@RequestMapping("api/role")
public class RoleController {

	private RoleServices roleServices;

	@Autowired
	public RoleController(RoleServices roleServices) {
		super();
		this.roleServices = roleServices;
	}

	// FIND ALL ROLES
	@GetMapping("/")
	public ResponseEntity<List<UserRoleDto>> findAllRoles() {
		List<UserRoleDto> roles = roleServices.findAll();
		if (roles.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(roles, HttpStatus.OK);
	}

	// FIND CATEGORY BY ID
	@GetMapping("/{id}")
	public ResponseEntity<UserRoleDto> getRoleById(@PathVariable Long id) {
		UserRoleDto roles = roleServices.findById(id);
		return new ResponseEntity<>(roles, HttpStatus.OK);
	}

	// ADD CATEGORY
	@PostMapping("/")
	public ResponseEntity<UserRoleDto> insertRole(@Valid @RequestBody UserRoleDto roles) {
		roleServices.save(roles);
		return new ResponseEntity<>(roles, HttpStatus.CREATED);

	}

	// UPDATE CATEGORY

	@PutMapping("/{id}")
	public ResponseEntity<UserRoleDto> updateRole(@PathVariable Long id,@Valid @RequestBody UserRoleDto roles) {
		roleServices.update(id, roles);
		return new ResponseEntity<>(roles, HttpStatus.OK);
	}

	// DELETE PRODUCT

	@DeleteMapping("/{id}")
	public ResponseEntity<UserRoleDto> deteleRole(@PathVariable Long id) {

		roleServices.findById(id);
		roleServices.delete(id);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
}
