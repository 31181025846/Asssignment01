package com.minhkhoa.myshop01.services;

import com.minhkhoa.myshop01.dto.TransactionStatusDto;
import com.minhkhoa.myshop01.entity.TransactionStatusEntity;
import com.minhkhoa.myshop01.repository.OrderDetailRepository;
import com.minhkhoa.myshop01.repository.TransactionStatusRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class TransactionStatusServices implements BaseServices<TransactionStatusDto, Long> {

    private final TransactionStatusRepository statusRepository;
    private final OrderDetailRepository detailRepository;

    public TransactionStatusServices(TransactionStatusRepository statusRepository, OrderDetailRepository detailRepository) {
        this.statusRepository = statusRepository;
        this.detailRepository = detailRepository;
    }

    // *********** FUNCTION CONVERT TO ENTITY **************//

    public TransactionStatusEntity toEntity(Long id) {

        Optional<TransactionStatusEntity> status = statusRepository.findById(id);
        status.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return status.get();
    }

    //FIND ALL
    @Override
    public List<TransactionStatusDto> findAll() {
        return statusRepository.findAll().stream().map(TransactionStatusEntity::toDTO).collect(Collectors.toList());
    }

    //FIND BY ID
    @Override
    public TransactionStatusDto findById(Long id) {
        Optional<TransactionStatusEntity> statusEntity = statusRepository.findById(id);
        statusEntity.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return statusEntity.get().toDTO();
    }

    //SAVE STATUS

    @Override
    public void save(TransactionStatusDto transactionStatusDto) {
        TransactionStatusEntity statusEntity = new TransactionStatusEntity();
        statusEntity.setOrderDetails(detailRepository.findById(transactionStatusDto.getOrderDetailId())
                .orElseThrow(() -> new RuntimeException("Khong tim thay ID")));
        statusEntity.setStatus(transactionStatusDto.getStatus());
        statusRepository.save(statusEntity);
    }

    //UPDATE STATUS
    @Override
    public void update(Long id, TransactionStatusDto transactionStatusDto) {
        Optional<TransactionStatusEntity> statusEntity = statusRepository.findById(id);
        statusEntity.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        if (id.equals(transactionStatusDto.getId()))
        {
            statusEntity.get().setOrderDetails(detailRepository.findById(transactionStatusDto.getOrderDetailId())
                    .orElseThrow(() -> new RuntimeException("Khong tim thay ID")));
            statusEntity.get().setStatus(transactionStatusDto.getStatus());
            statusRepository.save(toEntity(transactionStatusDto.getId()));
        }
        else
            throw new RuntimeException("ID are not matched");
    }

    @Override
    public void delete(Long id) {
        statusRepository.delete(toEntity(id));
    }
}
