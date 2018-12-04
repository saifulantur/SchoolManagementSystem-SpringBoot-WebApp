package com.school.management.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.management.model.Subject;
import com.school.management.repository.SubjectRepository;
import com.school.management.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService{
	
	@Autowired
	SubjectRepository subjectRepository;

	@Override
	public void add(Subject subject) {
		subjectRepository.save(subject);
		
	}

	@Override
	public void update(Subject subject) {
		subjectRepository.save(subject);
		
	}

	@Override
	public void delete(Integer id) {
		subjectRepository.deleteById(id);
		
	}

	@Override
	public Subject findById(Integer id) {
		// TODO Auto-generated method stub
		return subjectRepository.getOne(id);
	}

	@Override
	public List<Subject> showAllSubject() {
		// TODO Auto-generated method stub
		return subjectRepository.findAll();
	}
	
	

}
