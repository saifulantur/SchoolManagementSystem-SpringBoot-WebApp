package com.school.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.school.management.model.Section;

public interface SectionRepository extends JpaRepository<Section, Integer> {

}
