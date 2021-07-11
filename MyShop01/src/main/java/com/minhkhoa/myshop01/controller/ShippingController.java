package com.minhkhoa.myshop01.controller;


import com.minhkhoa.myshop01.dto.ShippingDto;
import com.minhkhoa.myshop01.services.ShippingServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public ResponseEntity<ShippingDto> addType(@RequestBody ShippingDto shippingDto) {
        shippingServices.save(shippingDto);
        return new ResponseEntity<>(shippingDto, HttpStatus.CREATED);
    }

    //UPDATE TYPE OF SHIPPINGS
    @PutMapping("/{id}")
    public ResponseEntity<ShippingDto> updateTypes(@PathVariable Long id, @RequestBody ShippingDto shippingDto) {
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
