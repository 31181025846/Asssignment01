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

import com.minhkhoa.myshop01.Entity.ProductReviewEntity;
import com.minhkhoa.myshop01.Services.ProductReviewServices;

@RestController
@RequestMapping("/api/productreview")
public class ProductReviewController {

	private ProductReviewServices services;

	@Autowired
	public ProductReviewController(ProductReviewServices services) {
		this.services = services;
	}

	@GetMapping("/")
	public ResponseEntity<List<ProductReviewEntity>> findAllReviews() {
		List<ProductReviewEntity> reviews = services.findAll();
		if (reviews.isEmpty()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(reviews, HttpStatus.OK);
	}

	@GetMapping("/{id}")
	public ResponseEntity<ProductReviewEntity> getReviewById(@PathVariable Long id) {
		Optional<ProductReviewEntity> reviews = services.findById(id);
		if (!reviews.isPresent()) {
			return new ResponseEntity<>(reviews.get(), HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<>(reviews.get(), HttpStatus.OK);
	}

	@PostMapping("/")
	public ResponseEntity<ProductReviewEntity> insertReview(@RequestBody ProductReviewEntity review) {
		services.save(review);
		return new ResponseEntity<>(review, HttpStatus.OK);
	}

	@PutMapping("/{id}")
	public ResponseEntity<ProductReviewEntity> updateReview(@PathVariable Long id,
			@RequestBody ProductReviewEntity review) {
		Optional<ProductReviewEntity> currReview = services.findById(id);
		if (!currReview.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		}
		currReview.get().setContent(review.getContent());
		currReview.get().setRating(review.getRating());
		services.save(currReview.get());
		return new ResponseEntity<>(currReview.get(), HttpStatus.OK);
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<ProductReviewEntity> deteleReview(@PathVariable Long id) {
		Optional<ProductReviewEntity> reviews = services.findById(id);
		if (!reviews.isPresent()) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		services.delete(reviews.get());
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}

}
