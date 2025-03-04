package com.org.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.org.dto.Principal;
import com.org.dto.Student;
import com.org.dto.Teacher;
import com.org.utilities.Helper;

public class TeacherDao {
	private EntityManager em = null;
	private EntityTransaction et = null;
	EntityManagerFactory emf = null;

	public List<Teacher> fetchTeacherByEmailPassword(String email, String password) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		String jpql = "select t from Teacher t where t.email=?1 and t.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);

		return query.getResultList();
	}

	public List<Teacher> fetchAllTeacher() {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		String jpql = "select t from Teacher t";
		Query query = em.createQuery(jpql);

		return query.getResultList();
	}

	public Teacher fetchTeacherById(int id) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();

		return em.find(Teacher.class, id);
	}

	public boolean saveTeacher(Teacher teacher) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		et = em.getTransaction();
		if (teacher != null) {
			et.begin();
			em.merge(teacher);
			et.commit();
			return true;
		}
		return false;
	}

//	public boolean deleteTeacher(Teacher teacher) {
//		emf = Helper.getEntityManagerFactory();
//		em = emf.createEntityManager();
//		et = em.getTransaction();
//		List<Teacher> list=new ArrayList<Teacher>();
//		list.add(null);
//		Principal principal = teacher.getPrincipal();
//		principal.setTeachers(list);
//		 teacher.getStudents().forEach(student->student.setTeacher(null));
//		 teacher.setPrincipal(null);
//		 teacher.setStudents(null);
//		
//		
//		if (teacher != null) {
//			et.begin();
//			em.remove(teacher);
//			em.merge(principal);
//			et.commit();
//			return true;
//		}
//		return false;
//
//	}

}
