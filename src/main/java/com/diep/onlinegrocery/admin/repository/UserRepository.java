package com.diep.onlinegrocery.admin.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.diep.onlinegrocery.admin.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(String email);

}