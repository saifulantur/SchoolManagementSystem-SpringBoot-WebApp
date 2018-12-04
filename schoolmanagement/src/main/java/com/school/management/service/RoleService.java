package com.school.management.service;

import com.school.management.model.Role;
import com.school.management.model.User;

import java.util.List;

public interface RoleService {

    public void addRole(Role role);
    public void updateRole(Role role);
    public Role getRole(Long id);
    public List<Role> getRoleByUser(User user);
}
