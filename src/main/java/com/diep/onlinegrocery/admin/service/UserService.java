package com.diep.onlinegrocery.admin.service;

import java.util.List;

import com.diep.onlinegrocery.admin.dto.UserDto;
import com.diep.onlinegrocery.admin.entity.User;

public interface UserService {
    void saveUser(UserDto userDto);

    User findUserByEmail(String email);

    List<UserDto> findAllUsers();
}
