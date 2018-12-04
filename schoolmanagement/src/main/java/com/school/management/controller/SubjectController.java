package com.school.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.school.management.model.Subject;
import com.school.management.service.SubjectService;

@Controller
public class SubjectController {
	
	@Autowired
	SubjectService subjectService;
	
	@RequestMapping(value="/subject")
	public String showSubject() {
		return "viewSubject";
	}
	
	@RequestMapping(value="/saveSubject")
	//, method = RequestMethod.POST
	public @ResponseBody String saveSubject(@RequestBody Subject subject) {
		subjectService.add(subject);
		return "Record Saved Successfully.";
	}
	
	@RequestMapping(value="/viewAllSubject")
	public @ResponseBody List<Subject> viewAllSubject() {
		return subjectService.showAllSubject();
	}

}
