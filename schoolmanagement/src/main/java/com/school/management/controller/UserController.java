package com.school.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.school.management.model.User;
import com.school.management.service.RoleService;
import com.school.management.service.UsersService;

@Controller
public class UserController {

    @Autowired
    private UsersService userService;
    @Autowired
    private RoleService roleService;
    
    @RequestMapping(value = "/userregistration")
    public String login() {
        return "userregistration";
    }
    
      
    @Autowired
   private PasswordEncoder passwordEncoder;
    

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public @ResponseBody String saveUser(@RequestBody User user){
    	
		com.school.management.model.Role userRole = new com.school.management.model.Role();
    	
    	//Adding additional information to user object
        user.setEnabled(1);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        
        //Saving user object
        userService.addUser(user);
        
        //Creating default role
        userRole.setName("ROLE_USER");
    	userRole.setUsers(user);
    	
    	//Saving default role
        roleService.addRole(userRole);
        
        return "User Created Successfully";
        
    }
    
    @RequestMapping(value = "/showAllUser"/*, method = RequestMethod.POST*/)
    public @ResponseBody List<User> showAllUser(){
    	
    	return userService.getAllUsers();
    }

    @RequestMapping(value = "/showUserByName", method = RequestMethod.POST)
    public @ResponseBody User shoUserByName( @RequestParam("userName") String userName ){
    	
    	return userService.findByUserName(userName);
    }
}
