package com.minhkhoa.myshop01.controller;


import com.minhkhoa.myshop01.dto.UsersDto;
import com.minhkhoa.myshop01.services.UsersServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/user")
public class UsersController {

    private UsersServices usersServices;

    @Autowired
    public UsersController(UsersServices usersServices) {
        this.usersServices = usersServices;
    }

    //FIND ALL USERS
    @GetMapping("/")
    public ResponseEntity<List<UsersDto>> findAllUsers() {
        List<UsersDto> usersDto = usersServices.findAll();
        if (usersDto.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(usersDto, HttpStatus.OK);
    }

    //FIND BY ID
    @GetMapping("/{id}")
    public ResponseEntity<UsersDto> getUsersById(@PathVariable Long id) {
        UsersDto usersDto = usersServices.findById(id);
        return new ResponseEntity<>(usersDto, HttpStatus.OK);
    }

    //ADD USER
    @PostMapping("/")
    public ResponseEntity<UsersDto> insertProd(@RequestBody UsersDto usersDto) {
        usersServices.save(usersDto);
        return new ResponseEntity<>(usersDto, HttpStatus.CREATED);
    }

    //UPDATE USER
    @PutMapping("/{id}")
    public ResponseEntity<UsersDto> updateUser(@PathVariable Long id, @RequestBody UsersDto usersDto) {
        usersServices.update(id, usersDto);
        return new ResponseEntity<>(usersDto, HttpStatus.OK);
    }

    //DELETE USER
    @DeleteMapping("/{id}")
    public ResponseEntity<UsersDto> deteleUser(@PathVariable Long id) {

        usersServices.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
