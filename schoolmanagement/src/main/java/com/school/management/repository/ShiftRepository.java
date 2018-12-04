package com.school.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.school.management.model.Shift;

public interface ShiftRepository extends JpaRepository<Shift, Integer> {

}
