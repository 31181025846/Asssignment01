package com.minhkhoa.myshop01.services;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import com.minhkhoa.myshop01.entity.ShippingEntity;
import org.springframework.stereotype.Service;

import com.minhkhoa.myshop01.dto.ShippingDto;
import com.minhkhoa.myshop01.repository.ShippingRepository;

@Service
public class ShippingServices implements BaseServices<ShippingDto, Long> {

    private final ShippingRepository shippingRepository;

    public ShippingServices(ShippingRepository shippingRepository) {
        this.shippingRepository = shippingRepository;
    }

    // *********** FUNCTION CONVERT TO ENTITY **************//

    public ShippingEntity toEntity(Long id) {

        Optional<ShippingEntity> ship = shippingRepository.findById(id);
        ship.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return ship.get();
    }

    //FIND ALL SHIPPINGS

    @Override
    public List<ShippingDto> findAll() {
        return shippingRepository.findAll().stream().map(ShippingEntity::toDTO).collect(Collectors.toList());
    }

    //FIND SHIPPINGS BY ID

    @Override
    public ShippingDto findById(Long id) {
        Optional<ShippingEntity> entity = shippingRepository.findById(id);
        entity.orElseThrow(() -> new RuntimeException("Not found"));
        return entity.get().toDTO();
    }

    //SAVE SHIPPINGS TYPE

    @Override
    public void save(ShippingDto t) {
        ShippingEntity ship = new ShippingEntity();
        ship.setShipping_type(t.getShipping_type());
        shippingRepository.save(ship);

    }

    //UPDATE TYPE OF SHIPPINGS

    @Override
    public void update(Long id, ShippingDto t) {
        Optional<ShippingEntity> entity = shippingRepository.findById(id);
        entity.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        if (id.equals(t.getId())) {
            entity.get().setShipping_type(t.getShipping_type());
            shippingRepository.save(toEntity(t.getId()));
        } else
            throw new RuntimeException("ID are not matched");

    }

    //DELETE TYPE OF SHIPPINGS

    @Override
    public void delete(Long id) {
        shippingRepository.delete(toEntity(id));

    }


}
