package com.minhkhoa.myshop01.services;


import com.minhkhoa.myshop01.dto.OrderDetailDto;
import com.minhkhoa.myshop01.entity.OrderDetailEntity;
import com.minhkhoa.myshop01.repository.OrderDetailRepository;
import com.minhkhoa.myshop01.repository.OrdersRepository;
import com.minhkhoa.myshop01.repository.ProductRepository;
import com.minhkhoa.myshop01.repository.ShippingRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class OrderDetailServices implements BaseServices<OrderDetailDto, Long> {

    private final OrderDetailRepository detailRepository;
    private final OrdersRepository ordersRepository;
    private final ProductRepository productRepository;
    private final ShippingRepository shippingRepository;

    public OrderDetailServices(OrderDetailRepository detailRepository, OrdersRepository ordersRepository, ProductRepository productRepository, ShippingRepository shippingRepository) {
        this.detailRepository = detailRepository;
        this.ordersRepository = ordersRepository;
        this.productRepository = productRepository;
        this.shippingRepository = shippingRepository;
    }

    // *********** FUNCTION CONVERT TO ENTITY **************//

    public OrderDetailEntity toEntity(Long id) {

        Optional<OrderDetailEntity> details = detailRepository.findById(id);
        details.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return details.get();
    }

    //FIND ALL

    @Override
    public List<OrderDetailDto> findAll() {
        return detailRepository.findAll().stream().map(OrderDetailEntity::toDTO).collect(Collectors.toList());
    }

    //FIND BY ID

    @Override
    public OrderDetailDto findById(Long id) {
        Optional<OrderDetailEntity> entity = detailRepository.findById(id);
        entity.orElseThrow(() -> new RuntimeException("Not found"));
        return entity.get().toDTO();
    }

    //SAVE ORDERS
    @Override
    public void save(OrderDetailDto orderDetailDto) {
        OrderDetailEntity detailEntity = new OrderDetailEntity();
        detailEntity.setQuantity(orderDetailDto.getQuantity());
        detailEntity.setTotal(orderDetailDto.getTotal());
        detailEntity.setOrders(ordersRepository.findById(orderDetailDto.getOrderId()).orElseThrow(() -> new RuntimeException("Khong tim thay ID")));
        detailEntity.setProducts(productRepository.findById(orderDetailDto.getProductId()).orElseThrow(() -> new RuntimeException("Khong tim thay ID")));
        detailEntity.setShippings(shippingRepository.findById(orderDetailDto.getShippingId()).orElseThrow(() -> new RuntimeException("Khong tim thay ID")));
        detailRepository.save(detailEntity);
    }

    @Override
    public void update(Long aLong, OrderDetailDto orderDetailDto) {

    }

    //DELETE DETAILS
    @Override
    public void delete(Long id) {
        detailRepository.delete(toEntity(id));
    }
}
