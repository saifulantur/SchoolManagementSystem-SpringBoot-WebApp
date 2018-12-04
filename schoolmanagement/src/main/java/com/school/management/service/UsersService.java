package com.school.management.service;

import com.school.management.model.User;

import java.util.List;

public interface UsersService {

    void addUser(User user);
    void updateUser(User user);
    User getUser(Long id);
    List<User> getAllUsers();
    void deleteUsers(User user);
    User findByUserName(String username);
    
}
