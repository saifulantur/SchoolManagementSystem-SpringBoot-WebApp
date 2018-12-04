package com.school.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.school.management.model.Shift;
import com.school.management.service.ShiftService;

@Controller
public class ShiftController {
	@Autowired
	ShiftService shiftService;
	
	@RequestMapping(value="/shift")
	public String showShift() {
		return "viewShift";
	}
	
	@RequestMapping(value="/saveShift")
	//, method = RequestMethod.POST
	public @ResponseBody String saveShift(@RequestBody Shift shift) {
		shiftService.add(shift);
		return "Record Saved Successfully.";
	}
	
	@RequestMapping(value="/viewAllShift")
	public @ResponseBody List<Shift> viewAllShift() {
		return shiftService.showAllShift();
	}

}
