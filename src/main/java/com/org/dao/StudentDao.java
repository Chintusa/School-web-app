package com.org.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.org.dto.Principal;
import com.org.dto.School;
import com.org.dto.Student;
import com.org.dto.Teacher;
import com.org.utilities.Helper;

public class StudentDao {
	private EntityManager em=null;
	private EntityTransaction et=null;
	EntityManagerFactory emf=null;
	
	
	public List<Student> fetchStudentByEmailPassword(String email,String password) {
		 emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		String jpql="select s from Student s where s.email=?1 and s.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);
		  
		
		return query.getResultList();
	}
	
	public List<Student> fetchAllStudent() {
		 emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		String jpql="select s from Student s";
		Query query = em.createQuery(jpql);
		
		
		return query.getResultList();
	}
	public Student fetchStudentById(int id) {
		 emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		
		return em.find(Student.class, id);
	}
	
	public boolean saveStudent(Student student) {
		 emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		 et = em.getTransaction();	 
				 
		 if(student!=null) {
		 et.begin();
		 em.merge(student);
		 et.commit();
		 return true;
		 }
		 return false;
}
	public boolean deleteStudent(int id) {
		 emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		 et = em.getTransaction();
		 Student student = em.find(Student.class,id);		 
		 Principal principal = student.getPrincipal();
		 if(student!=null) {
		 et.begin();
		 em.remove(student);
		 em.merge(principal);
		 et.commit();
		 return true;
		 }
		return false;
		
	}

	
}
