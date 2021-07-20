package com.minhkhoa.myshop01.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.ProductDto;
import com.minhkhoa.myshop01.entity.ProductEntity;
import com.minhkhoa.myshop01.repository.CategoryRepository;
import com.minhkhoa.myshop01.repository.ProductRepository;

@Service
public class ProductServices implements BaseServices<ProductDto, Long> {

	private final ProductRepository productRepository;

	private final CategoryRepository categoryRepository;

	public ProductServices(ProductRepository productRepository, CategoryRepository categoryRepository) {
		this.productRepository = productRepository;
		this.categoryRepository = categoryRepository;
	}

	// *********** FUNCTION CONVERT TO ENTITY **************//

	public ProductEntity toEntity(Long id) {

		Optional<ProductEntity> product = productRepository.findById(id);
		product.orElseThrow(() -> new RuntimeException("Không tìm thấy Id sản phẩm!"));
		return product.get();
	}

	// FIND ALL PRODUCTS

	@Override
	public List<ProductDto> findAll() {

		return productRepository.findAll().stream().map(ProductEntity::toDTO).collect(Collectors.toList());
	}

	// FIND PRODUCT BY ID

	@Override
	public ProductDto findById(Long id) {
		Optional<ProductEntity> entity = productRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id sản phẩm!"));
		return entity.get().toDTO();

	}

	// SAVE PRODUCT

	@Override
	public void save(ProductDto t) {

		ProductEntity product = new ProductEntity();
	
		product.setName(t.getName());
		product.setPrice(t.getPrice());
		product.setQuantity(t.getQuantity());
		product.setDescribe(t.getDescribe());
		product.setCategories(categoryRepository.findById(t.getCateid())
				.orElseThrow(() -> new RuntimeException("Không tìm thấy Id category!")));
		productRepository.save(product);

	}

	// UPDATE PRODUCT

	@Override
	public void update(Long id, ProductDto t) {
		Optional<ProductEntity> entity = productRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id sản phẩm!"));
		if (id.equals(t.getId())) {
			entity.get().setCategories(categoryRepository.findById(t.getCateid())
					.orElseThrow(() -> new RuntimeException("Không tìm thấy Id category!")));
			entity.get().setName(t.getName());
			entity.get().setPrice(t.getPrice());
			entity.get().setQuantity(t.getQuantity());
			entity.get().setDescribe(t.getDescribe());
			productRepository.save(toEntity(t.getId()));

		} else
			throw new RuntimeException("ID không trùn khớp!");

	}

	// DELETE PRODUCT

	@Override
	public void delete(Long id) {

		productRepository.delete(toEntity(id));

	}
	
	
	
	void updateProduct(ProductEntity product)
	{};
    void removeProductById(Long id)
    {};
    public ProductEntity getProductById(Long id) {
    	Optional<ProductEntity> product = productRepository.findById(id);
    	return product.get();
    }
    


}
