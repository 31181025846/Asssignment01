package com.minhkhoa.myshop01.services;


import com.minhkhoa.myshop01.dto.CustomerDto;
import com.minhkhoa.myshop01.entity.CustomerEntity;
import com.minhkhoa.myshop01.repository.CustomerRepository;
import com.minhkhoa.myshop01.repository.UsersRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CustomerServices implements BaseServices<CustomerDto, Long> {

    private final CustomerRepository customerRepository;
    private final UsersRepository usersRepository;

    public CustomerServices(CustomerRepository customerRepository, UsersRepository usersRepository)
    {
        this.customerRepository = customerRepository;
        this.usersRepository =usersRepository;
    }

    // *********** FUNCTION CONVERT TO ENTITY **************//

    public CustomerEntity toEntity(Long id) {

        Optional<CustomerEntity> customer = customerRepository.findById(id);
        customer.orElseThrow(() -> new RuntimeException("Không tìm thấy ID Khách hàng!"));
        return customer.get();
    }

    //FIND ALL
    @Override
    public List<CustomerDto> findAll() {
        return customerRepository.findAll().stream().map(CustomerEntity::toDTO).collect(Collectors.toList());
    }

    //FIND BY ID
    @Override
    public CustomerDto findById(Long id) {
        Optional<CustomerEntity> customerEntity = customerRepository.findById(id);
        customerEntity.orElseThrow(() -> new RuntimeException("Không tìm thấy ID Khách hàng!"));
        return customerEntity.get().toDTO();
    }


    //SAVE CUSTOMER
    @Override
    public void save(CustomerDto customerDto) {
        CustomerEntity customerEntity = new CustomerEntity();
        customerEntity.setUsers(usersRepository.findById(customerDto.getUsersid()).orElseThrow(() -> new RuntimeException("Không tìm thấy ID User!")));
        customerEntity.setName(customerDto.getName());
        customerEntity.setDate_of_birth(customerDto.getDate_of_birth());
        customerEntity.setMobile(customerDto.getMobile());
        customerEntity.setCity(customerDto.getCity());
        customerEntity.setEmail(customerDto.getEmail());
        customerRepository.save(customerEntity);
    }

    //UPDATE CUSTOMER

    @Override
    public void update(Long id, CustomerDto customerDto) {
        Optional<CustomerEntity> customerEntity = customerRepository.findById(id);
        customerEntity.orElseThrow(() -> new RuntimeException("Không tìm thấy ID Khách hàng!"));
        if (id.equals(customerDto.getId()))
        {
            customerEntity.get().setUsers(usersRepository.findById(customerDto.getUsersid()).orElseThrow(() -> new RuntimeException("Không tìm thấy ID User!")));
            customerEntity.get().setName(customerDto.getName());
            customerEntity.get().setDate_of_birth(customerDto.getDate_of_birth());
            customerEntity.get().setMobile(customerDto.getMobile());
            customerEntity.get().setCity(customerDto.getCity());
            customerEntity.get().setEmail(customerDto.getEmail());
            customerRepository.save(toEntity(customerDto.getId()));
        }else
            throw new RuntimeException("Id không trùng khớp!");

    }

    @Override
    public void delete(Long id) {
        customerRepository.delete(toEntity(id));
    }
}
