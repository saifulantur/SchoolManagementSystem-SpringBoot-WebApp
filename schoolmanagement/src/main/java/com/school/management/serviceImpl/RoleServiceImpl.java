package com.school.management.serviceImpl;

import com.school.management.model.Role;
import com.school.management.model.User;
import com.school.management.repository.RoleRepository;
import com.school.management.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public void addRole(Role role) {
        roleRepository.save(role);
    }

    @Override
    public void updateRole(Role role) {
        roleRepository.save(role);
    }

    @Override
    public Role getRole(Long id) {
        return roleRepository.getOne(id);
    }

    @Override
    public List<Role> getRoleByUser(User user) {
        return roleRepository.findRolesByUserList(user);
    }
}
