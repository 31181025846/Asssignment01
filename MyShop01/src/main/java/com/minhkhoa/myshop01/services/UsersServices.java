package com.minhkhoa.myshop01.services;

import com.minhkhoa.myshop01.dto.UsersDto;
import com.minhkhoa.myshop01.entity.UsersEntity;
import com.minhkhoa.myshop01.repository.UserRoleRepository;
import com.minhkhoa.myshop01.repository.UsersRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UsersServices implements BaseServices<UsersDto, Long> {

    private final UsersRepository usersRepository;
    private final UserRoleRepository roleRepository;

    public UsersServices(UsersRepository usersRepository, UserRoleRepository roleRepository) {
        this.usersRepository = usersRepository;
        this.roleRepository = roleRepository;
    }

    // *********** FUNCTION CONVERT TO ENTITY **************//

    public UsersEntity toEntity(Long id) {

        Optional<UsersEntity> product = usersRepository.findById(id);
        product.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        return product.get();
    }

    // FIND ALL

    @Override
    public List<UsersDto> findAll() {
        return usersRepository.findAll().stream().map(UsersEntity::toDTO).collect(Collectors.toList());
    }

    //FIND BY ID

    @Override
    public UsersDto findById(Long id) {
        Optional<UsersEntity> usersEntity = usersRepository.findById(id);
        usersEntity.orElseThrow(() -> new RuntimeException("Khong tim thay id"));
        return usersEntity.get().toDTO();
    }

    //SAVE USER

    @Override
    public void save(UsersDto usersDto) {
        UsersEntity users = new UsersEntity();
        users.setUserRoles(roleRepository.findById(usersDto.getRoleid()).orElseThrow(() -> new RuntimeException("Khong tim thay id")));
        users.setUsername(usersDto.getUsername());
        users.setPassword(usersDto.getPassword());
        usersRepository.save(users);
    }

    //UPDATE

    @Override
    public void update(Long id, UsersDto usersDto) {
        Optional<UsersEntity> usersEntity = usersRepository.findById(id);
        usersEntity.orElseThrow(() -> new RuntimeException("Khong tim thay ID"));
        if (id.equals(usersDto.getId())) {
            usersEntity.get().setUserRoles(roleRepository.findById(usersDto.getRoleid()).orElseThrow(() -> new RuntimeException("Not found")));
            usersEntity.get().setUsername(usersDto.getUsername());
            usersEntity.get().setPassword(usersDto.getPassword());
            usersRepository.save(toEntity(usersDto.getId()));
        } else throw new RuntimeException("ID are not matched");
    }

    //DELETE

    @Override
    public void delete(Long id) {
        usersRepository.delete(toEntity(id));
    }
}
