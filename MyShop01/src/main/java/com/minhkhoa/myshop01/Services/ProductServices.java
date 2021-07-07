package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.ProductEntity;
import com.minhkhoa.myshop01.Repository.ProductRepository;

@Service
public class ProductServices implements BaseServices<ProductEntity, Long> {

	private ProductRepository productRepository;

	@Autowired
	public ProductServices(ProductRepository productRepository) {
		this.productRepository = productRepository;
	}

	@Override
	public List<ProductEntity> findAll() {

		return (List<ProductEntity>) productRepository.findAll();
	}

	@Override
	public Optional<ProductEntity> findById(Long id) {

		return productRepository.findById(id);
	}

	@Override
	public void save(ProductEntity product) {
		productRepository.save(product);

	}

	@Override
	public void delete(ProductEntity product) {
		productRepository.delete(product);

	}

}
