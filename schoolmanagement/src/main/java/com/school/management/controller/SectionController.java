package com.school.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.school.management.model.Section;
import com.school.management.service.SectionService;

@Controller
public class SectionController {

	@Autowired
	SectionService sectionService;
	
	@RequestMapping(value="/section")
	public String showSection() {
		return "viewSection";
	}
	
	@RequestMapping(value="/saveSection")
	//, method = RequestMethod.POST
	public @ResponseBody String saveSection(@RequestBody Section section) {
		sectionService.add(section);
		return "Record Saved Successfully.";
	}
	
	@RequestMapping(value="/viewAllSection")
	public @ResponseBody List<Section> viewAllSections() {
		return sectionService.showAllSections();
	}
	
	
}
