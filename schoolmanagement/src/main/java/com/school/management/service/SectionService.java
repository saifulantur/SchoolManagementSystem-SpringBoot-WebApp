package com.school.management.service;

import java.util.List;

import com.school.management.model.Section;

public interface SectionService {
	
	void add(Section section);
	void update(Section section);
	void delete(Integer id);
	Section findById(Integer id);
	List<Section> showAllSections();


}
