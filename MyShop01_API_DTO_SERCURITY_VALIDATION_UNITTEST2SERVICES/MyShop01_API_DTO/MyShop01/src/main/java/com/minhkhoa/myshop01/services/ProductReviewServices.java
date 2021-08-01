package com.minhkhoa.myshop01.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.ProductReviewDto;
import com.minhkhoa.myshop01.entity.ProductReviewEntity;
import com.minhkhoa.myshop01.repository.ProductRepository;
import com.minhkhoa.myshop01.repository.ProductReviewRepository;

@Service
public class ProductReviewServices implements BaseServices<ProductReviewDto, Long> {

	private final ProductReviewRepository productReviewRepository;

	private final ProductRepository productRepository;

	public ProductReviewServices(ProductReviewRepository productReviewRepository, ProductRepository productRepository) {
		this.productReviewRepository = productReviewRepository;
		this.productRepository = productRepository;
	}

	// *********** FUNCTION CONVERT TO ENTITY **************//

	public ProductReviewEntity toEntity(Long id) {

		Optional<ProductReviewEntity> prodReview = productReviewRepository.findById(id);
		prodReview.orElseThrow(() -> new RuntimeException("Không tìm thấy Id review!"));
		return prodReview.get();
	}

	// FIND ALL REVIEWS
	@Override
	public List<ProductReviewDto> findAll() {

		return productReviewRepository.findAll().stream().map(ProductReviewEntity::toDTO).collect(Collectors.toList());

	}

	// FIND REVIEW BY ID
	@Override
	public ProductReviewDto findById(Long id) {
		Optional<ProductReviewEntity> entity = productReviewRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id review!"));
		return entity.get().toDTO();
	}

	// SAVE REVIEW
	@Override
	public void save(ProductReviewDto t) {
		ProductReviewEntity prodReview = new ProductReviewEntity();
		prodReview.setProducts(productRepository.findById(t.getProdid())
				.orElseThrow(() -> new RuntimeException("Không tìm thấy Id sản phẩm!")));
		prodReview.setContent(t.getContent());
		prodReview.setRating(t.getRating());
		productReviewRepository.save(prodReview);
	}

	// UPDATE REVIEW
	@Override
	public void update(Long id, ProductReviewDto t) {
		Optional<ProductReviewEntity> entity = productReviewRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id review!"));
		if (id.equals(t.getId())) {
			entity.get().setProducts(productRepository.findById(t.getProdid())
					.orElseThrow(() -> new RuntimeException("Không tìm thấy Id sản phẩm!")));
			entity.get().setContent(t.getContent());
			entity.get().setRating(t.getRating());
			productReviewRepository.save(toEntity(t.getId()));
		} else
			throw new RuntimeException("ID không trùng khớp!");

	}

	// DELETE REVIEW
	@Override
	public void delete(Long id) {
		productReviewRepository.delete(toEntity(id));

	}

}
