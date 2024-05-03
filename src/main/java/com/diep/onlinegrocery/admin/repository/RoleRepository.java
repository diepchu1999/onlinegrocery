package com.diep.onlinegrocery.admin.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.diep.onlinegrocery.admin.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

	Role findByName(String name);
}
