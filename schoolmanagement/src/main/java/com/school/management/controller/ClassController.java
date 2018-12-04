package com.school.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.school.management.model.ClassModel;
import com.school.management.service.ClassService;

@Controller
public class ClassController {
	
	@Autowired
	ClassService classService;
	
	@RequestMapping(value="/class")
	public String showClass() {
		return "viewClass";
	}
	
	@RequestMapping(value="/saveClass")
	//, method = RequestMethod.POST
	public @ResponseBody String saveClass(@RequestBody ClassModel classModel) {
		classService.add(classModel);
		return "Record Saved Successfully.";
	}
	
	@RequestMapping(value="/viewAllClass")
	public @ResponseBody List<ClassModel> viewAllClassModels() {
		return classService.showAllClassModel();
	}

}
