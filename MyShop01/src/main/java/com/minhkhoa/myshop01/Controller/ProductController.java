package com.minhkhoa.myshop01.Controller;

import java.util.List;
import java.util.Optional;

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

import com.minhkhoa.myshop01.Entity.ProductEntity;
import com.minhkhoa.myshop01.Services.ProductServices;

@RestController
@RequestMapping("/api/product")
public class ProductController {

	private ProductServices productServices;

	@Autowired
	public ProductController(ProductServices productServices) {
		this.productServices = productServices;
	}

	@GetMapping("/")
	public ResponseEntity<List<ProductEntity>> findAllProds() {
		List<ProductEntity> products = productServices.findAll();
		if (products.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(products, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<ProductEntity> getProdsById(@PathVariable Long id) {
		Optional<ProductEntity> products = productServices.findById(id);
		if (!products.isPresent()) {
			return new ResponseEntity<>(products.get(), HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(products.get(), HttpStatus.OK);
	}

	@PostMapping("/")
	public ResponseEntity<ProductEntity> insertProd(@RequestBody ProductEntity product) {
		productServices.save(product);
		return new ResponseEntity<>(product, HttpStatus.OK);
	}

	public void GetCateType() {

	}

	@PutMapping("/{id}")
	public ResponseEntity<ProductEntity> updateProds(@PathVariable Long id, @RequestBody ProductEntity product) {
		Optional<ProductEntity> currproduct = productServices.findById(id);
		if (!currproduct.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		currproduct.get().setName(product.getName());
		currproduct.get().setPrice(product.getPrice());
		currproduct.get().setQuantity(product.getQuantity());
		currproduct.get().setDescribe(product.getDescribe());

		productServices.save(currproduct.get());
		return new ResponseEntity<>(currproduct.get(), HttpStatus.OK);
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<ProductEntity> deteleProd(@PathVariable Long id) {
		Optional<ProductEntity> product = productServices.findById(id);
		if (!product.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		productServices.delete(product.get());
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
}
