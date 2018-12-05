package com.school.management.service;

import java.util.List;

import com.school.management.model.StudentGroup;

public interface StudentGroupService {
	
	void add(StudentGroup studentGroup);
	void update(StudentGroup studentGroup);
	void delete(Integer id);
	StudentGroup findById(Integer id);
	List<StudentGroup> showAllStudentGroup();

}
