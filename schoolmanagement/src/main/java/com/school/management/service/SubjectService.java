package com.school.management.service;

import java.util.List;
import com.school.management.model.Subject;

public interface SubjectService {
	
	void add(Subject subject);
	void update(Subject subject);
	void delete(Integer id);
	Subject findById(Integer id);
	List<Subject> showAllSubject();

}
