package com.school.management.repository;

import com.school.management.model.Role;
import com.school.management.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RoleRepository  extends JpaRepository<Role, Long> {

    List<Role> findRolesByUserList(User user);
}
