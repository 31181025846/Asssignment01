package com.minhkhoa.myshop01.controller;


import com.minhkhoa.myshop01.dto.CustomerDto;
import com.minhkhoa.myshop01.services.CustomerServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/customer")
public class CustomerController {

    private CustomerServices customerServices;

    @Autowired
    public CustomerController(CustomerServices customerServices)
    {
        this.customerServices = customerServices;
    }

    //GET ALL CUSTOMERS
    @GetMapping("/")
    public ResponseEntity<List<CustomerDto>> findAllCustomers() {
        List<CustomerDto> customers = customerServices.findAll();
        if (customers.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(customers, HttpStatus.OK);
    }

    // GET CUSTOMER BY ID

    @GetMapping("/{id}")
    public ResponseEntity<CustomerDto> getCustomerById(@PathVariable Long id) {
        CustomerDto customerDto = customerServices.findById(id);
        return new ResponseEntity<>(customerDto, HttpStatus.OK);
    }

    // ADD CUSTOMER

    @PostMapping("/")
    public ResponseEntity<CustomerDto> insertCustomer(@RequestBody CustomerDto customerDto) {
        customerServices.save(customerDto);
        return new ResponseEntity<>(customerDto, HttpStatus.CREATED);
    }

    // UPDATE PRODUCT

    @PutMapping("/{id}")
    public ResponseEntity<CustomerDto> updateCustomer(@PathVariable Long id, @RequestBody CustomerDto customerDto) {
        customerServices.update(id, customerDto);
        return new ResponseEntity<>(customerDto, HttpStatus.OK);
    }

    // DELETE PRODUCT

    @DeleteMapping("/{id}")
    public ResponseEntity<CustomerDto> deteleCustomer(@PathVariable Long id) {

        customerServices.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
