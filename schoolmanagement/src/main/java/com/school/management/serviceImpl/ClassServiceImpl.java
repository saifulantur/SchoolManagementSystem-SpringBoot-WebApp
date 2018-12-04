package com.school.management.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.management.model.ClassModel;
import com.school.management.repository.ClassRepository;
import com.school.management.service.ClassService;

@Service
public class ClassServiceImpl implements ClassService {
	@Autowired
	ClassRepository classRepository;

	@Override
	public void add(ClassModel classModel) {
		classRepository.save(classModel);
		
	}

	@Override
	public void update(ClassModel classModel) {
		classRepository.save(classModel);
		
	}

	@Override
	public void delete(Integer id) {
		classRepository.deleteById(id);
		
	}

	@Override
	public ClassModel findById(Integer id) {
		// TODO Auto-generated method stub
		return classRepository.getOne(id);
	}

	@Override
	public List<ClassModel> showAllClassModel() {
		// TODO Auto-generated method stub
		return classRepository.findAll();
	}

}
