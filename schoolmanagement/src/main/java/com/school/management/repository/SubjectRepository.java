package com.school.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.school.management.model.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Integer> {

}
