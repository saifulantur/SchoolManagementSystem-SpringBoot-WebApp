package com.school.management.service;

import java.util.List;

import com.school.management.model.Shift;

public interface ShiftService {
	
	void add(Shift shift);
	void update(Shift shift);
	void delete(int id);
	Shift findById(int id);
	List<Shift> showAllShift();

}
