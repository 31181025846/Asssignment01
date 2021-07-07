package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.OrdersEntity;
import com.minhkhoa.myshop01.Repository.OrdersRepository;

@Service
public class OrdersServices implements BaseServices<OrdersEntity, Long> {

	private OrdersRepository ordersRepository;

	@Autowired
	public OrdersServices(OrdersRepository ordersRepository) {
		this.ordersRepository = ordersRepository;
	}

	@Override
	public List<OrdersEntity> findAll() {

		return (List<OrdersEntity>) ordersRepository.findAll();
	}

	@Override
	public Optional<OrdersEntity> findById(Long id) {

		return ordersRepository.findById(id);
	}

	@Override
	public void save(OrdersEntity orders) {
		ordersRepository.save(orders);

	}

	@Override
	public void delete(OrdersEntity orders) {
		ordersRepository.delete(orders);

	}
}
