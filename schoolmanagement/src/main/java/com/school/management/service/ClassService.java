package com.school.management.service;

import java.util.List;

import com.school.management.model.ClassModel;

public interface ClassService {
	
	void add(ClassModel classModel);
	void update(ClassModel classModel);
	void delete(Integer id);
	ClassModel findById(Integer id);
	List<ClassModel> showAllClassModel();

}
