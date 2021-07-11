package com.minhkhoa.myshop01.services;

import com.minhkhoa.myshop01.dto.UserRoleDto;
import com.minhkhoa.myshop01.entity.UserRoleEntity;
import com.minhkhoa.myshop01.repository.UserRoleRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UserRoleServices implements BaseServices<UserRoleDto, Long> {

    private final UserRoleRepository roleRepository;

    public UserRoleServices(UserRoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }


    // *********** FUNCTION CONVERT TO ENTITY **************//

    public UserRoleEntity toEntity(Long id) {

        Optional<UserRoleEntity> product = roleRepository.findById(id);
        product.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return product.get();
    }


    //FIND ALL ROLES

    @Override
    public List<UserRoleDto> findAll() {
        return roleRepository.findAll().stream().map(UserRoleEntity::toDTO).collect(Collectors.toList());
    }

    //FIND BY ID

    @Override
    public UserRoleDto findById(Long id) {
        Optional<UserRoleEntity> entity = roleRepository.findById(id);
        entity.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return entity.get().toDTO();
    }

    //SAVE ROLES
    @Override
    public void save(UserRoleDto userRoleDto) {
        UserRoleEntity roleEntity = new UserRoleEntity();
        roleEntity.setUser_role_name(userRoleDto.getUser_role_name());
        roleRepository.save(roleEntity);

    }

    //UPDATE ROLES
    @Override
    public void update(Long id, UserRoleDto userRoleDto) {
        Optional<UserRoleEntity> entity = roleRepository.findById(id);
        entity.orElseThrow(() -> new RuntimeException("Khong tim thay id"));
        if (id.equals(userRoleDto.getId())) {
            entity.get().setUser_role_name(userRoleDto.getUser_role_name());
            roleRepository.save(toEntity(userRoleDto.getId()));
        } else
            throw new RuntimeException("ID are not matched");

    }

    //DELETE ROLE

    @Override
    public void delete(Long id) {
        roleRepository.delete(toEntity(id));

    }
}
