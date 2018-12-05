package com.school.management.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.management.model.Section;
import com.school.management.repository.SectionRepository;
import com.school.management.service.SectionService;

@Service
public class SectionServiceImpl implements SectionService {

	@Autowired
	SectionRepository sectionRepository;

	@Override
	public void add(Section section) {
		sectionRepository.save(section);
		
	}

	@Override
	public void update(Section section) {
		sectionRepository.save(section);
		
	}

	@Override
	public void delete(Integer id) {
		sectionRepository.deleteById(id);
		
	}

	@Override
	public Section findById(Integer id) {
		// TODO Auto-generated method stub
		return sectionRepository.getOne(id);
	}

	@Override
	public List<Section> showAllSections() {
		// TODO Auto-generated method stub
		return sectionRepository.findAll();
	}
	
	
}
