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

import com.minhkhoa.myshop01.dto.ProductReviewDto;
import com.minhkhoa.myshop01.services.ProductReviewServices;

@RestController
@RequestMapping("/api/reviews")
public class ProductReviewController {

	private ProductReviewServices productReviewServices;

	@Autowired
	public ProductReviewController(ProductReviewServices productReviewServices) {
		this.productReviewServices = productReviewServices;
	}

	// GET ALL

	@GetMapping("/")
	public ResponseEntity<List<ProductReviewDto>> findAllProdReviews() {
		List<ProductReviewDto> prodReviews = productReviewServices.findAll();
		if (prodReviews.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(prodReviews, HttpStatus.OK);
	}

	// FIND BY ID

	@GetMapping("/{id}")
	public ResponseEntity<ProductReviewDto> getProdReviewsById(@PathVariable Long id) {
		ProductReviewDto prodReviews = productReviewServices.findById(id);
		return new ResponseEntity<>(prodReviews, HttpStatus.OK);
	}

	// ADD REVIEW
	@PostMapping("/")
	public ResponseEntity<ProductReviewDto> addReviews(@Valid @RequestBody ProductReviewDto prodReviews) {
		productReviewServices.save(prodReviews);
		return new ResponseEntity<>(prodReviews, HttpStatus.CREATED);
	}

	// UPDATE REVIEW

	@PutMapping("/{id}")
	public ResponseEntity<ProductReviewDto> updateReviews(@Valid @PathVariable Long id,
			@RequestBody ProductReviewDto prodReviews) {
		productReviewServices.update(id, prodReviews);
		return new ResponseEntity<>(prodReviews, HttpStatus.OK);

	}

	// DELETE REVIEW
	@DeleteMapping("/{id}")
	public ResponseEntity<ProductReviewDto> deleteReview(@PathVariable Long id) {
		productReviewServices.delete(id);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

}
