package com.minhkhoa.myshop01.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.OrdersDto;

import com.minhkhoa.myshop01.entity.OrdersEntity;
import com.minhkhoa.myshop01.repository.CustomerRepository;
import com.minhkhoa.myshop01.repository.OrdersRepository;

@Service
public class OrdersServices implements BaseServices<OrdersDto, Long> {

	private CustomerRepository customerRepository;

	private OrdersRepository ordersRepository;

	public OrdersServices(CustomerRepository customerRepository, OrdersRepository ordersRepository) {
		super();
		this.customerRepository = customerRepository;

		this.ordersRepository = ordersRepository;
	}

	// *********** FUNCTION CONVERT TO ENTITY **************//
	public OrdersEntity toEntity(Long id) {
		Optional<OrdersEntity> order = ordersRepository.findById(id);
		order.orElseThrow(() -> new RuntimeException("Không tìm thấy Id order!"));
		return order.get();
	}

	// FIND ALL
	@Override
	public List<OrdersDto> findAll() {

		return ordersRepository.findAll().stream().map(OrdersEntity::toDTO).collect(Collectors.toList());
	}

	// FIND BY ID
	@Override
	public OrdersDto findById(Long id) {
		Optional<OrdersEntity> entity = ordersRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id order!"));
		return entity.get().toDTO();
	}

	// SAVE

	@Override
	public void save(OrdersDto t) {
		OrdersEntity order = new OrdersEntity();
		order.setOrders_date(t.getOrders_date());
		order.setCustomers(customerRepository.findById(t.getCustomerid())
				.orElseThrow(() -> new RuntimeException("Không tìm thấy Id Khách hàng!")));

		ordersRepository.save(order);
	}

	// UPDATE

	@Override
	public void update(Long id, OrdersDto t) {
		Optional<OrdersEntity> entity = ordersRepository.findById(id);
		entity.orElseThrow(() -> new RuntimeException("Không tìm thấy Id order!"));
		if (id.equals(t.getId())) {
			entity.get().setOrders_date(t.getOrders_date());
			entity.get().setCustomers(customerRepository.findById(t.getCustomerid())
					.orElseThrow(() -> new RuntimeException("Không tìm thấy Id Khách hàng!")));

			ordersRepository.save(toEntity(id));
		} else
			throw new RuntimeException("ID không trùng khớp!");

	}

	// DELETE

	@Override
	public void delete(Long id) {
		ordersRepository.delete(toEntity(id));

	}
	
	
	
	
	//GET SHOP CART

	public OrdersEntity getShopCart(Long customer_id)
	{
		return null;//ordersRepository.getCustomerShoppingCart(customer_id);
	}
	
	//TEST
	  @SuppressWarnings("deprecation")
	public OrdersEntity createShopCart(Long customer_id)
	  {
		  OrdersEntity cart = new OrdersEntity();
		  cart.setStatus(0);
		  cart.setCustomers(customerRepository.getOne(cart.getCustomers().getId()));
		  cart.setOrderDetails(new ArrayList<>());
		  ordersRepository.save(cart);
		  return cart;
	  }
}