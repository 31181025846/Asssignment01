package com.minhkhoa.myshop01.controller;


import com.minhkhoa.myshop01.dto.ShippingDto;
import com.minhkhoa.myshop01.dto.TransactionStatusDto;
import com.minhkhoa.myshop01.services.TransactionStatusServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/status")
public class TransactionStatusController {

    private TransactionStatusServices statusServices;

    @Autowired
    public TransactionStatusController(TransactionStatusServices statusServices)
    {
        this.statusServices = statusServices;
    }

    // GET ALL PRODUCTS

    @GetMapping("/")
    public ResponseEntity<List<TransactionStatusDto>> findAllStatus() {
        List<TransactionStatusDto> status = statusServices.findAll();
        if (status.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(status, HttpStatus.OK);
    }

    // GET PRODUCT BY ID

    @GetMapping("/{id}")
    public ResponseEntity<TransactionStatusDto> getStatusById(@PathVariable Long id) {
        TransactionStatusDto status = statusServices.findById(id);
        return new ResponseEntity<>(status, HttpStatus.OK);
    }

    // ADD PRODUCT

    @PostMapping("/")
    public ResponseEntity<TransactionStatusDto> addStatus(@RequestBody TransactionStatusDto statusDto) {
        statusServices.save(statusDto);
        return new ResponseEntity<>(statusDto, HttpStatus.CREATED);
    }

    // UPDATE PRODUCT

    @PutMapping("/{id}")
    public ResponseEntity<TransactionStatusDto> updateStatus(@PathVariable Long id, @RequestBody TransactionStatusDto statusDto) {
        statusServices.update(id, statusDto);
        return new ResponseEntity<>(statusDto, HttpStatus.OK);
    }

    //DELETE TYPE OF SHIPPINGS
    @DeleteMapping("/{id}")
    public ResponseEntity<TransactionStatusDto> deteleStatus(@PathVariable Long id) {

        statusServices.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
