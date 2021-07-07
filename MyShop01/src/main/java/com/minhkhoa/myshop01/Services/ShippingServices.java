package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.ShippingEntity;
import com.minhkhoa.myshop01.Repository.ShippingRepository;

@Service
public class ShippingServices implements BaseServices<ShippingEntity, Long> {

	private ShippingRepository shippingRepository;

	@Autowired
	public ShippingServices(ShippingRepository shippingRepository) {
		this.shippingRepository = shippingRepository;
	}

	@Override
	public List<ShippingEntity> findAll() {

		return (List<ShippingEntity>) shippingRepository.findAll();
	}

	@Override
	public Optional<ShippingEntity> findById(Long id) {

		return shippingRepository.findById(id);
	}

	@Override
	public void save(ShippingEntity shippings) {
		shippingRepository.save(shippings);

	}

	@Override
	public void delete(ShippingEntity shippings) {
		shippingRepository.delete(shippings);

	}

}
