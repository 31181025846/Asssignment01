package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.OrderDetailEntity;
import com.minhkhoa.myshop01.Repository.OrderDetailRepository;

@Service
public class OrderDetailServices implements BaseServices<OrderDetailEntity, Long> {

	private OrderDetailRepository orderDetailRepository;

	@Autowired
	public OrderDetailServices(OrderDetailRepository orderDetailRepository) {
		this.orderDetailRepository = orderDetailRepository;
	}

	@Override
	public List<OrderDetailEntity> findAll() {

		return (List<OrderDetailEntity>) orderDetailRepository.findAll();
	}

	@Override
	public Optional<OrderDetailEntity> findById(Long id) {

		return orderDetailRepository.findById(id);
	}

	@Override
	public void save(OrderDetailEntity ordersDetails) {
		orderDetailRepository.save(ordersDetails);

	}

	@Override
	public void delete(OrderDetailEntity ordersDetails) {
		orderDetailRepository.delete(ordersDetails);
		;

	}

}
