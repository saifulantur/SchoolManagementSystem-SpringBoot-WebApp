package com.school.management.repository;

import com.school.management.model.User;
import org.springframework.data.jpa.repository.JpaRepository;


public interface UsersRepository extends JpaRepository<User, Long> {
    User findByUserName(String userName);
}
