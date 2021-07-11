package com.minhkhoa.myshop01.controller;


import com.minhkhoa.myshop01.dto.OrdersDto;
import com.minhkhoa.myshop01.services.OrdersServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/orders")
public class OrdersController {

    private OrdersServices ordersServices;
    @Autowired
    public OrdersController(OrdersServices ordersServices) {
        this.ordersServices = ordersServices;
    }

    // GET ALL ORDER

    @GetMapping("/")
    public ResponseEntity<List<OrdersDto>> findAllOrders() {
        List<OrdersDto> ordersDtos = ordersServices.findAll();
        if (ordersDtos.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(ordersDtos, HttpStatus.OK);
    }

    // GET PRODUCT BY ID

    @GetMapping("/{id}")
    public ResponseEntity<OrdersDto> getOrdersById(@PathVariable Long id) {
        OrdersDto ordersDto = ordersServices.findById(id);
        return new ResponseEntity<>(ordersDto, HttpStatus.OK);
    }

    // ADD ORDER

    @PostMapping("/")
    public ResponseEntity<OrdersDto> insertOrder(@RequestBody OrdersDto ordersDto) {
        ordersServices.save(ordersDto);
        return new ResponseEntity<>(ordersDto, HttpStatus.CREATED);
    }

    // DELETE PRODUCT

    @DeleteMapping("/{id}")
    public ResponseEntity<OrdersDto> deteleOrder(@PathVariable Long id) {

        ordersServices.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
