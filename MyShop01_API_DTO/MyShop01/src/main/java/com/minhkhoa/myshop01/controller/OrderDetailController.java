//package com.minhkhoa.myshop01.controller;
//
//import com.minhkhoa.myshop01.dto.OrderDetailDto;
//import com.minhkhoa.myshop01.services.OrderDetailServices;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//
//@RestController
//@RequestMapping("/api/detail")
//public class OrderDetailController {
//
//    private OrderDetailServices detailServices;
//
//    @Autowired
//    public OrderDetailController(OrderDetailServices detailServices) {
//        this.detailServices = detailServices;
//    }
//// GET ALL PRODUCTS
//
//    @GetMapping("/")
//    public ResponseEntity<List<OrderDetailDto>> findAllDetails() {
//        List<OrderDetailDto> details = detailServices.findAll();
//        if (details.isEmpty()) {
//            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//        }
//        return new ResponseEntity<>(details, HttpStatus.OK);
//    }
//
//    // GET PRODUCT BY ID
//
//    @GetMapping("/{id}")
//    public ResponseEntity<OrderDetailDto> getDetiailById(@PathVariable Long id) {
//        OrderDetailDto detailDto = detailServices.findById(id);
//        return new ResponseEntity<>(detailDto, HttpStatus.OK);
//    }
//
//    // ADD PRODUCT
//
//    @PostMapping("/")
//    public ResponseEntity<OrderDetailDto> insertDetails(@RequestBody OrderDetailDto detailDto) {
//        detailServices.save(detailDto);
//        return new ResponseEntity<>(detailDto, HttpStatus.CREATED);
//    }
//
//    //DELETE
//    @DeleteMapping("/{id}")
//    public ResponseEntity<OrderDetailDto> deteleDetail(@PathVariable Long id) {
//
//        detailServices.delete(id);
//        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//    }
//
//}
