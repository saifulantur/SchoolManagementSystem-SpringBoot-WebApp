package com.school.management.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.management.model.StudentGroup;
import com.school.management.repository.StudentGroupRepository;
import com.school.management.service.StudentGroupService;

@Service
public class StudentGroupServiceImpl implements StudentGroupService{
	@Autowired
	StudentGroupRepository studentGroupRepository;

	@Override
	public void add(StudentGroup studentGroup) {
		studentGroupRepository.save(studentGroup);
		
	}

	@Override
	public void update(StudentGroup studentGroup) {
		studentGroupRepository.save(studentGroup);
		
	}

	@Override
	public void delete(Integer id) {
		studentGroupRepository.deleteById(id);
		
	}

	@Override
	public StudentGroup findById(Integer id) {
		// TODO Auto-generated method stub
		return studentGroupRepository.getOne(id);
	}

	@Override
	public List<StudentGroup> showAllStudentGroup() {
		// TODO Auto-generated method stub
		return studentGroupRepository.findAll();
	}
	
	

}
