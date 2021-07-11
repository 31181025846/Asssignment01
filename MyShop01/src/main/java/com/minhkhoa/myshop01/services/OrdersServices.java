package com.minhkhoa.myshop01.services;

import com.minhkhoa.myshop01.dto.OrdersDto;
import com.minhkhoa.myshop01.entity.OrdersEntity;
import com.minhkhoa.myshop01.repository.CustomerRepository;
import com.minhkhoa.myshop01.repository.OrdersRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class OrdersServices implements BaseServices<OrdersDto, Long> {

    private final OrdersRepository ordersRepository;
    private final CustomerRepository customerRepository;

    public OrdersServices(OrdersRepository ordersRepository, CustomerRepository customerRepository) {
        this.ordersRepository = ordersRepository;
        this.customerRepository = customerRepository;
    }


    // *********** FUNCTION CONVERT TO ENTITY **************//
    public OrdersEntity toEntity(Long id) {

        Optional<OrdersEntity> product = ordersRepository.findById(id);
        product.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return product.get();
    }

    //FIND ALL

    @Override
    public List<OrdersDto> findAll() {
        return ordersRepository.findAll().stream().map(OrdersEntity::toDTO).collect(Collectors.toList());
    }

    //FIND BY ID

    @Override
    public OrdersDto findById(Long id) {
        Optional<OrdersEntity> ordersEntity = ordersRepository.findById(id);
        ordersEntity.orElseThrow(() -> new RuntimeException("Not found"));
        return ordersEntity.get().toDTO();
    }

    //SAVE ORDERS

    @Override
    public void save(OrdersDto ordersDto) {
    OrdersEntity ordersEntity = new OrdersEntity();
    ordersEntity.setCustomers(customerRepository.findById(ordersDto.getCustomerid()).orElseThrow(() -> new RuntimeException("Khong tim thay id")));
    ordersEntity.setOrders_date(ordersDto.getOrders_date());
    ordersRepository.save(ordersEntity);
    }


    //UPDATE ORDER
    @Override
    public void update(Long id, OrdersDto ordersDto) {
        Optional<OrdersEntity> entity = ordersRepository.findById(id);
        entity.orElseThrow(() -> new RuntimeException("Not found"));
        if (id.equals(ordersDto.getId())) {
            entity.get().setCustomers(customerRepository.findById(ordersDto.getCustomerid())
                    .orElseThrow(() -> new RuntimeException("Khong tim thay Id")));
            entity.get().setOrders_date(ordersDto.getOrders_date());
            ordersRepository.save(toEntity(ordersDto.getId()));
        }
        else
            throw new RuntimeException("ID are not matched");

    }

    //DELETE
    @Override
    public void delete(Long id) {
        ordersRepository.delete(toEntity(id));
    }
}
