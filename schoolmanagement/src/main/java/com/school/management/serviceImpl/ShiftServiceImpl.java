package com.school.management.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.management.model.Shift;
import com.school.management.repository.ShiftRepository;
import com.school.management.service.ShiftService;

@Service
public class ShiftServiceImpl implements ShiftService {
	
	@Autowired
	ShiftRepository shiftRepository;

	@Override
	public void add(Shift shift) {
		shiftRepository.save(shift);
		
	}

	@Override
	public void update(Shift shift) {
		shiftRepository.save(shift);
		
	}

	@Override
	public void delete(int id) {
		shiftRepository.deleteById(id);
		
	}

	@Override
	public Shift findById(int id) {
		
		return shiftRepository.getOne(id);
	}

	@Override
	public List<Shift> showAllShift() {
		
		return shiftRepository.findAll();
	}

}
