package com.minhkhoa.myshop01.controller;

import java.util.List;

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

import com.minhkhoa.myshop01.dto.ProductDto;
import com.minhkhoa.myshop01.services.ProductServices;

@RestController
@RequestMapping("/api/product")
public class ProductController {

	private ProductServices productServices;

	@Autowired
	public ProductController(ProductServices productServices) {
		this.productServices = productServices;
	}
	// GET ALL PRODUCTS

	@GetMapping("/")
	public ResponseEntity<List<ProductDto>> findAllProds() {
		List<ProductDto> products = productServices.findAll();
		if (products.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(products, HttpStatus.OK);
	}
	// GET PRODUCT BY ID

	@GetMapping("/{id}")
	public ResponseEntity<ProductDto> getProdsById(@PathVariable Long id) {
		ProductDto products = productServices.findById(id);
		return new ResponseEntity<>(products, HttpStatus.OK);
	}
	// ADD PRODUCT

	@PostMapping("/")
	public ResponseEntity<ProductDto> insertProd(@RequestBody ProductDto product) {
		productServices.save(product);
		return new ResponseEntity<>(product, HttpStatus.CREATED);
	}
	// UPDATE PRODUCT

	@PutMapping("/{id}")
	public ResponseEntity<ProductDto> updateProds(@PathVariable Long id, @RequestBody ProductDto product) {
		productServices.update(id, product);
		return new ResponseEntity<>(product, HttpStatus.OK);
	}
	// DELETE PRODUCT

	@DeleteMapping("/{id}")
	public ResponseEntity<ProductDto> deteleProd(@PathVariable Long id) {

		productServices.delete(id);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
}
