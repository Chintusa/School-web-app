package com.org.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import lombok.Data;
@Data
@Entity
public class Teacher {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private int age; 
	private long mobile;
	private String subject;
	private double salaries;
	private String status;
	private String email;
	private String 	password;
	@ManyToOne
	@JoinColumn
	private Principal principal ;
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy = "teacher")
	private List<Student> students;

}
