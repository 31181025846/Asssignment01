package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.ProductReviewEntity;
import com.minhkhoa.myshop01.Repository.ProductReviewRepository;

@Service
public class ProductReviewServices implements BaseServices<ProductReviewEntity, Long> {

	private ProductReviewRepository productReviewRepository;

	@Autowired
	public ProductReviewServices(ProductReviewRepository productReviewRepository) {
		this.productReviewRepository = productReviewRepository;
	}

	@Override
	public List<ProductReviewEntity> findAll() {

		return (List<ProductReviewEntity>) productReviewRepository.findAll();
	}

	@Override
	public Optional<ProductReviewEntity> findById(Long id) {

		return productReviewRepository.findById(id);
	}

	@Override
	public void save(ProductReviewEntity prodreview) {

		productReviewRepository.save(prodreview);

	}

	@Override
	public void delete(ProductReviewEntity prodreview) {
		productReviewRepository.delete(prodreview);

	}

}
