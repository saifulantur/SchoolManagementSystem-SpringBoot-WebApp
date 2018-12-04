package com.school.management.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "id")
@Table(name="class")
public class ClassModel {
	
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="className")
	private String className; 
	
	@Column(name="classShortForm")
	private String classShortForm; 
	
	@Column(name="createdTime")
	private String createdTime;
	
	public ClassModel() {
		
	}

	public ClassModel(Integer id, String className, String classShortForm, String createdTime) {
		//super();
		this.id = id;
		this.className = className;
		this.classShortForm = classShortForm;
		this.createdTime = createdTime;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassShortForm() {
		return classShortForm;
	}

	public void setClassShortForm(String classShortForm) {
		this.classShortForm = classShortForm;
	}

	public String getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	
	

}
