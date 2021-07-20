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

import com.minhkhoa.myshop01.dto.ShippingDto;
import com.minhkhoa.myshop01.services.ShippingServices;

@RestController
@RequestMapping("/api/shipping")
public class ShippingController {

    private ShippingServices shippingServices;

    @Autowired
    public ShippingController(ShippingServices shippingServices) {
        this.shippingServices = shippingServices;
    }

    //GET ALL
    @GetMapping("/")
    public ResponseEntity<List<ShippingDto>> getAllShips() {
        List<ShippingDto> ships = shippingServices.findAll();
        if (ships.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(ships, HttpStatus.OK);
    }

    //FIND BY ID
    @GetMapping("/{id}")
    public ResponseEntity<ShippingDto> findShipsById(@PathVariable Long id) {
        ShippingDto ships = shippingServices.findById(id);
        return new ResponseEntity<>(ships, HttpStatus.OK);
    }

    //ADD TYPE OF SHIPPINGS
    @PostMapping("/")
    public ResponseEntity<ShippingDto> addType(@Valid @RequestBody ShippingDto shippingDto) {
        shippingServices.save(shippingDto);
        return new ResponseEntity<>(shippingDto, HttpStatus.CREATED);
    }

    //UPDATE TYPE OF SHIPPINGS
    @PutMapping("/{id}")
    public ResponseEntity<ShippingDto> updateTypes(@PathVariable Long id,@Valid @RequestBody ShippingDto shippingDto) {
        shippingServices.update(id, shippingDto);
        return new ResponseEntity<>(shippingDto, HttpStatus.OK);
    }

    //DELETE TYPE OF SHIPPINGS
    @DeleteMapping("/{id}")
    public ResponseEntity<ShippingDto> deteleTypes(@PathVariable Long id) {

        shippingServices.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
