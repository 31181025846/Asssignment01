package com.minhkhoa.myshop01.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.Entity.CustomerEntity;
import com.minhkhoa.myshop01.Repository.CustomerRepository;

@Service
public class CustomerServices implements BaseServices<CustomerEntity, Long> {

	private CustomerRepository customerRepository;
	
	@Autowired
	public CustomerServices(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}

	@Override
	public List<CustomerEntity> findAll() {

		return (List<CustomerEntity>) customerRepository.findAll();
	}

	@Override
	public Optional<CustomerEntity> findById(Long id) {

		return customerRepository.findById(id);
	}

	@Override
	public void save(CustomerEntity customer) {
		customerRepository.save(customer);

	}

	@Override
	public void delete(CustomerEntity customer) {
		customerRepository.delete(customer);

	}
}
