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
@Table(name="section")
public class Section {
	
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="fkShift")
	private Integer fkShift; 
	
	@Column(name="fkClass")
	private Integer fkClass;
	
	@Column(name="sectionCode")
	private String sectionCode; 
	
	@Column(name="sectionName")
	private String sectionName; 
	
	@Column(name="createdTime")
	private String createdTime;
	
	public Section() {
		
	}

	public Section(Integer id, Integer fkShift, Integer fkClass, String sectionCode, String sectionName,
			String createdTime) {
		//super();
		this.id = id;
		this.fkShift = fkShift;
		this.fkClass = fkClass;
		this.sectionCode = sectionCode;
		this.sectionName = sectionName;
		this.createdTime = createdTime;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFkShift() {
		return fkShift;
	}

	public void setFkShift(Integer fkShift) {
		this.fkShift = fkShift;
	}

	public Integer getFkClass() {
		return fkClass;
	}

	public void setFkClass(Integer fkClass) {
		this.fkClass = fkClass;
	}

	public String getSectionCode() {
		return sectionCode;
	}

	public void setSectionCode(String sectionCode) {
		this.sectionCode = sectionCode;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

	public String getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	
	

}
