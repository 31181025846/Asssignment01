package com.minhkhoa.myshop01.controller;


import com.minhkhoa.myshop01.dto.UserRoleDto;
import com.minhkhoa.myshop01.entity.UserRoleEntity;
import com.minhkhoa.myshop01.services.UserRoleServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/role")
public class UserRoleController {

    private UserRoleServices roleServices;

    @Autowired
    public UserRoleController(UserRoleServices roleServices) {
        this.roleServices = roleServices;
    }

    //FIND ALL
    @GetMapping("/")
    public ResponseEntity<List<UserRoleDto>> findAllRoles() {
        List<UserRoleDto> roles = roleServices.findAll();
        if (roles.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(roles, HttpStatus.OK);
    }

    //FIND BY ID
    @GetMapping("/{id}")
    public ResponseEntity<UserRoleDto> getRolesById(@PathVariable Long id) {
        UserRoleDto roles = roleServices.findById(id);
        return new ResponseEntity<>(roles, HttpStatus.OK);
    }

    //ADD ROLES
    @PostMapping("/")
    public ResponseEntity<UserRoleDto> insertRole(@RequestBody UserRoleDto roleDto) {
        roleServices.save(roleDto);
        return new ResponseEntity<>(roleDto, HttpStatus.CREATED);
    }

    //UPDATE ROLES
    @PutMapping("/{id}")
    public ResponseEntity<UserRoleDto> updateRoles(@PathVariable Long id, @RequestBody UserRoleDto roleDto) {
        roleServices.update(id, roleDto);
        return new ResponseEntity<>(roleDto, HttpStatus.OK);
    }

    //DELETE ROLE
    @DeleteMapping("/{id}")
    public ResponseEntity<UserRoleDto> deteleRole(@PathVariable Long id) {

        roleServices.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
