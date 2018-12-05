package com.school.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.school.management.model.StudentGroup;

public interface StudentGroupRepository extends JpaRepository<StudentGroup, Integer> {

}
