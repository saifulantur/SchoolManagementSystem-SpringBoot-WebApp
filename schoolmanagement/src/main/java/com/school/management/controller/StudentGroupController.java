package com.school.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.school.management.model.StudentGroup;
import com.school.management.service.StudentGroupService;

@Controller
public class StudentGroupController {
	@Autowired
	StudentGroupService studentGroupService;
	
	@RequestMapping(value="/studentGroup")
	public String showStudentGroup() {
		return "viewStudentGroup";
	}
	
	@RequestMapping(value="/saveStudentGroup")
	//, method = RequestMethod.POST
	public @ResponseBody String saveStudentGroup(@RequestBody StudentGroup studentGroup) {
		studentGroupService.add(studentGroup);
		return "Record Saved Successfully.";
	}
	
	@RequestMapping(value="/viewAllStudentGroup")
	public @ResponseBody List<StudentGroup> viewAllStudentGroups() {
		return studentGroupService.showAllStudentGroup();
	}

}
